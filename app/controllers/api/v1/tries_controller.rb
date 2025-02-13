# frozen_string_literal: true

module Api
  module V1
    class TriesController < Api::ApiController
      before_action :find_case
      before_action :check_case
      before_action :set_try, only: [ :show, :update, :destroy ]

      def index
        @tries = @case.tries
      end

      def create
        parameters_to_use = try_params
        if params[:parent_try_number] # We need special translation from try_number to the try.id
          parameters_to_use[:parent_id] = @case.tries.where(try_number: params[:parent_try_number]).first.id
        end
        @try = @case.tries.build parameters_to_use

        try_number = @case.last_try_number + 1

        @try.try_number       = try_number
        @case.last_try_number = try_number

        if @try.save && @case.save
          @try.add_curator_vars params[:curatorVars]
          Analytics::Tracker.track_try_saved_event current_user, @try

          respond_with @try
        else
          render json: @try.errors.concat(@case.errors), status: :bad_request
        end
      end

      def show
        respond_with @try
      end

      def update
        if @try.update try_params
          respond_with @try
        else
          render json: @try.errors, status: :bad_request
        end
      end

      def destroy
        @try.destroy

        render json: {}, status: :no_content
      end

      private

      def set_try
        # We always refer to a try as a incrementing linear number within the scope of
        # a case.   We don't use the internal try_id in the API.
        @try = @case.tries.where(try_number: params[:try_number]).first

        render json: { message: 'Try not found!' }, status: :not_found unless @try
      end

      def try_params
        params.require(:try).permit(
          :escape_query,
          :field_spec,
          :name,
          :number_of_rows,
          :query_params,
          :search_engine,
          :search_url,
          :parent_id
        )
      end
    end
  end
end
