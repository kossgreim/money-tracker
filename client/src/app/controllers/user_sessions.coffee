angular.module "client"
  .controller "UserSessionsCtrl", ($scope, $auth) ->
    $scope.$on 'auth:login-error', (ev, reason) ->
      $scope.error = reason.errors[0]
