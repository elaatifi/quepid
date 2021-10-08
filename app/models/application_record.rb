# frozen_string_literal: true


module ActiveRecord
  module ConnectionAdapters
    module MySQL
      module SchemaStatements

        private
        def default_row_format
          return nil
        end
      end
    end
  end
end

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end


