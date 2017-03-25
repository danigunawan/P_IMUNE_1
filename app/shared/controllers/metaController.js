angular.module('metaController', ['metaService'])

.controller('MetaController', ['$scope', 'Meta', 'ngMeta', function ($scope, Meta, ngMeta) {
	
	var $title, $suffix, $description, $keywords, $author, $logoicon, $brand, $footer;

	$title = 'IMUNISASI';
	$suffix = 'Single Page Application @ AngularJS Framework';
	$logoicon = 'public/img/angularjs-logo.png';
	$brand = 'IMUNISASI';
	$footer = '<a href="#" target="_blank" class="footer-link">&copy; 2017 IMUNISASI INDONESIA</a>';
	$author = 'Dani Gunawan';

	Meta.getMeta().then(function(response) {
		
		angular.forEach(response.data, function(record, index) {
			if (record.key_name == 'app_title') $title = record.key_value;
			if (record.key_name == 'app_suffix') $suffix = record.key_value;
			if (record.key_name == 'app_description') $description = record.key_value;
			if (record.key_name == 'app_keywords') $keywords = record.key_value;
			if (record.key_name == 'app_author') $author = record.key_value;
			if (record.key_name == 'app_logoicon') $logoicon = record.key_value;
			if (record.key_name == 'app_brand') $brand = record.key_value;
			if (record.key_name == 'app_footer') $footer = record.key_value;
		});

		ngMeta.setTitle($title, ' | ' + $suffix);
		ngMeta.setTag('description', $description);
		ngMeta.setTag('keywords', $keywords);
		ngMeta.setTag('author', $author);
		ngMeta.setTag('logoicon', $logoicon);
		ngMeta.setTag('brand', $brand);
		ngMeta.setTag('footer', $footer);
		
	});
}]);
