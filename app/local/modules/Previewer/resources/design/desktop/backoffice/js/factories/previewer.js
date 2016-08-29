
App.factory('Previewer', function($http, Url) {

    var factory = {};
    factory.language_code = null;

    factory.loadData = function() {

        var url = "previewer/backoffice_edit/load";

        return $http({
            method: 'GET',
            url: Url.get(url),
            cache: true,
            responseType:'json'
        });
    };

    factory.find = function() {

        var data = "";
        if(factory.language_code) {
            data = "/language_code/" + factory.language_code;
        }

        var url = "previewer/backoffice_edit/find" + data;

        return $http({
            method: 'POST',
            url: Url.get(url),
            cache: false,
            responseType:'json'
        });
    };

    factory.saveData = function(config) {
        var url = "previewer/backoffice_edit/save";

        return $http({
            method: 'POST',
            data: config,
            url: Url.get(url),
            cache: false,
            responseType:'json'
        });
    };

    factory.saveModal = function(config) {
        var url = "previewer/backoffice_modal/save";

        return $http({
            method: 'POST',
            data: config,
            url: Url.get(url),
            cache: false,
            responseType:'json'
        });
    };

    factory.loadDataModal = function() {

        var url = "previewer/backoffice_modal/load";

        return $http({
            method: 'GET',
            url: Url.get(url),
            cache: true,
            responseType:'json'
        });
    };

    return factory;
});
