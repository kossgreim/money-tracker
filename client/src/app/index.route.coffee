angular.module "client"
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "home",
        url: "/"
        templateUrl: "app/views/main/main.html"
        controller: "MainController"
        controllerAs: "main"
      .state "user_registration_new",
        utl: "/user_registrations/new"
        templateUrl: "app/views/user_registrations/new.html"
        controller: 'UserRegistrationsCtrl'

    $urlRouterProvider.otherwise '/'
