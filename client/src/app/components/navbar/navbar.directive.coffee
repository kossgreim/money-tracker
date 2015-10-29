angular.module "client"
  .directive 'navbar', ->

    NavbarController = ($scope, $auth, $location, $alert) ->
      $scope.user = $auth.user
      $scope.signOut = ->
        $auth.signOut()
        $location.path('/')
        $alert
          title: 'Goodbye'
          content: 'You successfully logged out'
          placement: 'top-right'
          type: 'success'
          duration: '2'

    directive =
      restrict: 'E'
      templateUrl: 'app/components/navbar/navbar.html'
      scope: user: '=', onLogout: '&'
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
