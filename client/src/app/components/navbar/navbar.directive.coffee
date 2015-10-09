angular.module "client"
  .directive 'acmeNavbar', ->

    NavbarController = ($auth) ->

    directive =
      restrict: 'E'
      templateUrl: 'app/components/navbar/navbar.html'
      scope: creationDate: '='
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
