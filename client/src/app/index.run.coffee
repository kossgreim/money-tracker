angular.module "client"
  .run ($rootScope, $location)->
    $rootScope.$on 'auth:login-success', ->
      $location.path('/')
