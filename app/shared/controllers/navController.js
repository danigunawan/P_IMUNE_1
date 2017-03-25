angular.module('navController', ['navService'])

.controller('NavController', ['$scope', function($scope) {
	
	$scope.navPills = [
		{
			'icon': 'cog',
			'link': 'settings',
			'caption': 'Pengaturan'
		},
		{
			'icon': 'user',
			'link': 'users',
			'caption': 'Profil'
		},
		{
			'icon': 'check-square-o',
			'link': 'acl',
			'caption': 'Akses'
		},
		{
			'icon': 'folder-open-o',
			'link': 'categories',
			'caption': 'Kategori'
		},
		{
			'icon': 'clone',
			'link': 'pages',
			'caption': 'Halaman'
		},
		{
			'icon': 'film',
			'link': 'images',
			'caption': 'Galeri'
		},
		{
			'icon': 'film',
			'link': 'suara',
			'caption': 'Audio'
		},
		{
			'icon': 'film',
			'link': 'Video',
			'caption': 'Video'
		},
		{
			'icon': 'film',
			'link': 'Learning',
			'caption': 'Learning'
		},
		{
			'icon': 'envelope-o',
			'link': 'messages',
			'caption': 'Posting'
		},
		{
			'icon': 'globe',
			'link': 'visitors',
			'caption': 'Kunjungan'
		},
	];
}])

.controller('MenuController', ['$rootScope', '$scope', '$location', 'Menu', function($rootScope, $scope, $location, Menu) {

	$scope.menuList = {};
	$scope.submenuList = {};

	$rootScope.$on('$routeChangeStart', function (event, next, current) {
		if (current) {
			if (current.$$route) {
				if (current.$$route.originalPath == '/categories') {
					$scope.updateMenu();
				}
			}
		}
		if (next) {
			if (next.$$route) {
				if (next.$$route.originalPath == '/page/:id') {
					var url = $location.url();
					var segments = url.split('/');
					$scope.updateSubmenu(segments[2]);
				}
				else {
					$scope.submenuList = {};
				}
			}
		}
	});

	Menu.getMenu().then(function(response) {
		if (angular.isArray(response.data)) {
			$scope.menuList = response.data;
		}
	});
	
	$scope.updateMenu = function() {
		Menu.getMenu().then(function(response) {
			if (angular.isArray(response.data)) {
				$scope.menuList = response.data;
			}
		});
	}

	$scope.updateSubmenu = function(id) {
		Menu.getSubmenu(id).then(function(response) {
			if (angular.isArray(response.data)) {
				$scope.submenuList = response.data;
			}
		});
	}

}]);

