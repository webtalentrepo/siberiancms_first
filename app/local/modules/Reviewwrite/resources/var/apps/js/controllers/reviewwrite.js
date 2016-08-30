App.config(function($stateProvider) {

	$stateProvider.state('reviewwrite-view', {
		url: BASE_PATH+"/reviewwrite/mobile_view/index/value_id/:value_id",
		controller: 'ReviewwriteController',
		templateUrl: "templates/reviewwrite/l1/view.html"
	});

}).controller('ReviewwriteController', function($rootScope, $scope, $stateParams, $translate, Dialog, Reviewwrite) {

	$scope.$on("connectionStateChange", function(event, args) {
		if(args.isOnline == true) {
			$scope.loadContent();
		}
	});

	$scope.is_loading = true;
	$scope.value_id = Reviewwrite.value_id = $stateParams.value_id;
	$scope.formData = ['', ''];
	$scope.reviewwriteData = {};

	$scope.page_title = '';
	$scope.customer_id = '';
	$scope.loadContent = function() {

		Reviewwrite.findAll().success(function(data) {
			$scope.page_title = data.page_title;
			$scope.customer_id = data.customer_id;
			$scope.formData[0] = data.current_user;
			$scope.formData[1] = data.rewritewrite_content;
		}).error(function() {

		}).finally(function() {
			$scope.is_loading = false;
		});

	};

	$scope.post = function() {
		if ($scope.formData[0] === null || $scope.formData[0] === '' || !$scope.formData[0]) {
			Dialog.alert($translate.instant("Error"), "Please insert user email address", $translate.instant("OK"));
			return;
		}
		$scope.reviewwriteData = {
			'customer_id': $scope.customer_id,
			'value_id': $scope.value_id,
			'reviewwrite_content': $scope.formData[1],
			'user_email': $scope.formData[0]
		};
		$scope.is_loading = true;

		Reviewwrite.post($scope.reviewwriteData).success(function(data) {
			$scope.reviewwriteData = {};
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