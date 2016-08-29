App.config(function($stateProvider) {

	$stateProvider.state('review-view', {
		url: BASE_PATH+"/review/mobile_view/index/value_id/:value_id",
		controller: 'ReviewViewController',
		templateUrl: "templates/review/l1/view.html"
	});

}).controller('ReviewController', function($scope, $stateParams, Dialog, Review) {

	console.log(Review);
	$scope.$on("connectionStateChange", function(event, args) {
		if(args.isOnline == true) {
			$scope.loadContent();
		}
	});

	$scope.is_loading = true;
	$scope.value_id = Review.value_id = $stateParams.value_id;
	$scope.reviewData = {};

	$scope.loadContent = function() {

		Review.findAll().success(function(data) {
			$scope.page_title = data.page_title;
		}).error(function() {

		}).finally(function() {
			$scope.is_loading = false;
		});

	};

	$scope.post = function() {

		$scope.is_loading = true;

		Review.post($scope.reviewData).success(function(data) {
			$scope.reviewData = {};
			if(data.success) {
				Dialog.alert("", data.message, $translate.instant("OK"));
			}
		}).error(function(data) {
			if(data && angular.isDefined(data.message)) {
				Dialog.alert($translate.instant("Error"), data.message, $translate.instant("OK"));
			}
		}).finally(function() {
			$scope.is_loading = false;
		});
	};

	$scope.loadContent();

});
