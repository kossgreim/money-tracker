angular.module "client"
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "home",
        url: "/"
        templateUrl: "app/views/main/main.html"
        controller: "MainController"
        controllerAs: "main"
      .state "new_user_registration",
        url: "/sign_up"
        templateUrl: "app/views/user_registrations/new.html"
        controller: 'UserRegistrationsCtrl'
      .state "new_user_session",
        url: "/sign_in"
        templateUrl: "app/views/user_sessions/new.html"
        controller: 'UserSessionsCtrl'

    $urlRouterProvider.otherwise '/'
