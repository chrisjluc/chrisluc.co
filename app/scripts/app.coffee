'use strict'

angular.module('website1App', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
      .when '/about',
        templateUrl: 'views/about.html'
      .when '/projects',
        templateUrl: 'views/projects.html'
      .when '/resume',
        templateUrl: 'views/resume.html'
      .when '/references',
        templateUrl: 'views/references.html'
      .otherwise
        redirectTo: '/'
