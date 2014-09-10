'use strict'

angular.module('website1App')
  .controller 'HeaderCtrl', ($scope) ->
    $scope.routes = [
      'about'
      'projects'
      'resume'
    ]
