# Ionic test App

# angular.module is a global place for creating, registering and retrieving Angular modules
# 'test' is the name of this angular module example (also set in a <body> attribute in index.html)
# the 2nd parameter is an array of 'requires'
# 'test.services' is found in services.js
# 'test.controllers' is found in controllers.js

window.Test =
  application: angular.module 'test',
    [
      'ionic', # Add other packages here...
      'test.lib', 'test.controllers', 'test.services'
    ]
  controllers:  angular.module 'test.controllers', []
  services:     angular.module 'test.services', []
  lib:          angular.module 'test.lib', []
