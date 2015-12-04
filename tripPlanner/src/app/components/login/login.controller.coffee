angular.module "tripPlanner"
  .controller 'loginController', ($state, authService) ->
    vm = this
    vm.login = () ->
      result = authService.login()
 
      if result.success
        $state.go('dashboard')
    return