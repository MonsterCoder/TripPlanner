angular.module "tripPlanner"
  .controller 'loginController', ($state, authService, $mdToast) ->
    vm = this
    vm.login = () ->
      result = authService.login()
 
      if result.success
        $state.go('dashboard')
      else
        $mdToast.show($mdToast.simple().content('Simple Toast!'))
    return