'use strict'

angular.module('website1App', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/projects',
        templateUrl: 'views/projects.html'
        controller: 'ProjectsCtrl'
      .when '/blog',
        templateUrl: 'views/blog.html'
        controller: 'BlogCtrl'
      .when '/resume',
        templateUrl: 'views/resume.html'
        controller: 'ResumeCtrl'
      .otherwise
        redirectTo: '/'
