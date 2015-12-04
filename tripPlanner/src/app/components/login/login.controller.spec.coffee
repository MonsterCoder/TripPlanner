describe 'login.controller', () ->
  sut = null
  $state = null
  $rootScope = null
  authService = null
  loginResponse = null
  
  beforeEach module 'tripPlanner'
  beforeEach inject ($controller, _$state_, _$rootScope_) ->
    $state = _$state_
    $rootScope = _$rootScope_
    authService = {
      login: jasmine.createSpy('login').and.callFake () -> loginResponse
    }
      
    sut = $controller 'loginController', {  authService: authService  }
  
  describe "login succeed", () ->
    beforeEach () ->
      loginResponse = {success: true }
      spyOn($state, 'go')
      sut.login()
      
    it "should be redirected to user dashboard", () ->
      expect($state.go).toHaveBeenCalledWith('dashboard')
      
  describe "login failed", () ->
    beforeEach () ->
      loginResponse = { success: false, message: "wrong password" }
      spyOn($state, 'go')
      sut.login()
      
    it "should stay at login page", () ->
      expect($state.go).not.toHaveBeenCalled()
