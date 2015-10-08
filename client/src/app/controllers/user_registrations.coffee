angular.module "client"
  .controller "UserRegistrationsCtrl", ($scope, $auth) ->
    $scope.handleRegBtnClick = ->
      $auth.submitRegistration($scope.registrationForm)
        .then (resp)->
          console.log resp
        .catch (resp)->
          console.log 'error'
