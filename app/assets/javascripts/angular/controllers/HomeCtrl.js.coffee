@nearbuyangular.controller 'HomeCtrl', ['$scope', '$log', '$http', ($scope, $log, $http) ->
  
  $scope.map =
  	center: 
    	latitude: 37.65
    	longitude: -122.3

  	zoom: 10

  $scope.options = scrollwheel: true

  $scope.items = []
  $http.get('./items.json').success((data) ->
    $scope.items = data
  )
  
  $scope.marker = 
    id: 2
    coords: 
      latitude: 40.345
      longitude: -122.334

]