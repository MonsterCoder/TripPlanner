describe 'signin.controller', () ->
  sut = null
  beforeEach Module 'tripPlanner'
  beforeEach inject ($controller) ->
    sut = $controller 'signinController', {}
  
  describe "login succeed", () ->
    it "should be redirected to user dashboard", () ->
    
  describe "login failed", () ->
    it "should display an error message", () ->
    
    it "should stay at login page", () ->
