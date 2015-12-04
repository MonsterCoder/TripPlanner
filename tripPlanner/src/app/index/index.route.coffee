angular.module 'tripPlanner'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: ''
        controller: 'HomeController'
        controllerAs: 'home'

    $urlRouterProvider.otherwise '/' 
