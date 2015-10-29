angular.module "client"
  .controller "UserRegistrationsCtrl", ($scope, $auth, $location) ->
    $scope.errors = null
    $scope.handleRegBtnClick = ->
      $auth.submitRegistration($scope.registrationForm)
        .then (resp)->
          $location.path('/')
        .catch (resp)->
          $scope.errors = resp.data.errors.full_messages
