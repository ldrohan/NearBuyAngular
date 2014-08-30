@nearbuyangular.controller 'HomeCtrl', ['$scope', ($scope) ->
	$scope.foo = 'boop'

	$scope.map =
  	center:
    	latitude: 45
    	longitude: -73

  	zoom: 8
]