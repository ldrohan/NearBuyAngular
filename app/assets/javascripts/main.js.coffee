@nearbuyangular = angular.module('nearbuyangular', [])

@nearbuyangular.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
  	when('/items', {
  		templateUrl: '../templates/items/index.html',
  		controller: 'ItemsIndexCtrl'
  		}).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    }) 
])
