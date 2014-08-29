@nearbuyangular.controller 'ItemShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
	$http.get("./items/#{$routeParams.id}.json").success((data) ->
		$scope.item = data
	)
]