@nearbuyangular.controller 'ItemsIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
	$scope.items = []
	$http.get('./items.json').success((data) ->
		$scope.items = data
	)

	$scope.viewItem = (id) ->
		$location.url "/items/#{id}"
]