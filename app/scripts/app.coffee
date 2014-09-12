'use strict'

angular.module('website1App', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
      .when '/projects',
        templateUrl: 'views/projects.html'
        controller: 'ProjectsCtrl'
      .when '/resume',
        templateUrl: 'views/resume.html'
        controller: 'ResumeCtrl'
      .otherwise
        redirectTo: '/'
