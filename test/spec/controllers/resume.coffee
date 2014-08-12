'use strict'

describe 'Controller: ResumeCtrl', () ->

  # load the controller's module
  beforeEach module 'website1App'

  ResumeCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ResumeCtrl = $controller 'ResumeCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
