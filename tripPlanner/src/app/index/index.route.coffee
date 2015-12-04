angular.module 'tripPlanner'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/home/home.html'
        controller: 'HomeController'
        controllerAs: 'home'

    $urlRouterProvider.otherwise '/' 
