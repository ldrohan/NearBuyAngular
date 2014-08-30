@nearbuyangular = angular.module('nearbuyangular', ['google-maps'])

@nearbuyangular.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
  	when('/items', {
  		templateUrl: '../templates/items/index.html',
  		controller: 'ItemsIndexCtrl'
  		}).
  	when('/items/:id', {
  		templateUrl: '../templates/items/show.html',
  		controller: 'ItemShowCtrl'
  		}).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    }) 
])
