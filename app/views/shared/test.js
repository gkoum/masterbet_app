(function() {
var ap = angular.module('app', ['login'])
    .config(function ($routeProvider)
    {
         $routeProvider
         	.when('/', {controller: MainController, templateUrl: 'templates/main.html'})
          .when('/login', {controller: LoginController, templateUrl: 'templates/login.html'})
      		.otherwise({redirectTo: '/'});
    });


ap.controller('MainController',['$scope' , '$http', function($scope, $http)
{
	$scope.applications = [];

    $http
        .get('http://localhost:8080/application')
        .success(function (data, status, error, config)
        {
            $scope.applications = data;
        });
}]);

})();