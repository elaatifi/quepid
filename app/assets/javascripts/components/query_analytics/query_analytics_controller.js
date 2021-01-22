'use strict';

/*jshint latedef:false*/

angular.module('QuepidApp')
  .controller('QueryAnalyticsCtrl', [
    '$scope',
    function (
      $scope
    ) {
      var ctrl = this;

      ctrl.thisQuery       = $scope.thisQuery;
      ctrl.varianceColour  = varianceColour;

      function varianceColour() {
        var colour = '';
        var val = ctrl.thisQuery.ratingVariance;
        switch(true)
        {
            case ((val >= 0) && (val < 0.25)):
                colour = 'SeaGreen';
                break;
            case ((val >= 0.25) && (val < 0.5)):
                colour = '#dbab09';
                break;
            case ((val >= 0.5) && (val <= 1)):
                colour = 'Tomato';
                break;
        }
        return colour;
      }
    }
  ]);
