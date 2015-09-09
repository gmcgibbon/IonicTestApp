Test.application

  .config ($stateProvider, $urlRouterProvider) ->

    # Ionic uses AngularUI Router which uses the concept of states
    # Learn more here: https://github.com/angular-ui/ui-router
    # Set up the various states which the app can be in.
    # Each state's controller can be found in controllers.js
    $stateProvider
      # application layout
      .state 'application',
        abstract: true,
        templateUrl: 'templates/layouts/application.html',
        controller: 'ApplicationAbstractController'

      # application#test
      .state 'application.test',
        url: '/test',
        views:
          'application':
            templateUrl: 'templates/application/test.html',
            controller: 'ApplicationTestController'

    # if none of the above states are matched, use this as the fallback
    $urlRouterProvider.otherwise '/test'
