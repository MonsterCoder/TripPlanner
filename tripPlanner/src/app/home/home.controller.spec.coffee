describe 'controllers', () ->
  vm = undefined
  $state = null
  $rootScope = null
  
  beforeEach module 'tripPlanner'

  beforeEach inject ($controller, _$state_, _$rootScope_) ->
    $state = _$state_
    $rootScope = _$rootScope_
    $state.get('/')
    $rootScope.$apply()
    
  it " defaults to home state", ()->
    expect($state.current.name).toBe "home"
    

