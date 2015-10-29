angular.module "client"
  .controller "UserSessionsCtrl", ($scope, $auth, $alert) ->
    $scope.$on 'auth:login-error', (ev, reason) ->
      $scope.errors = reason.errors
    $scope.$on 'auth:login-success', (ev, reason) ->
      $alert
        title: 'Welcome'
        content: 'You succeful log in'
        placement: 'top-right'
        type: 'success'
        duration: '2'
