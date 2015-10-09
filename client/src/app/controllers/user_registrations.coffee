angular.module "client"
  .controller "UserRegistrationsCtrl", ($scope, $auth, $location) ->
    $scope.handleRegBtnClick = ->
      $auth.submitRegistration($scope.registrationForm)
        .then (resp)->
          $location.path('/')
        .catch (resp)->
          console.log 'error'
