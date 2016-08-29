App.requires.push('colorpicker.module');

App.config(function($routeProvider) {

    $routeProvider.when(BASE_URL+"/previewer/backoffice_edit", {
        controller: 'PreviewerEditController',
        templateUrl: BASE_URL+"/previewer/backoffice_edit/template",
        code: "preview"
    }).when(BASE_URL+"/previewer/backoffice_modal", {
        controller: 'PreviewerEditModalController',
        templateUrl: BASE_URL+"/previewer/backoffice_modal/template",
        code: "modal_preview"
    });

}).controller("PreviewerEditController", function($scope, Header, Url, Previewer, Label, FileUploader) {

    $scope.header = new Header();
    $scope.header.button.left.is_visible = false;
    $scope.content_loader_is_visible = true;
    $scope.config = {};
    $scope.tmp_config = {};

    Previewer.loadData().success(function(data) {
        $scope.header.title = data.title;
        $scope.header.icon = data.icon;
    });

    Previewer.find().success(function(data) {
        if(data.previewer && data.previewer.previewer_id) {
            $scope.tmp_config = data.previewer;
        }
        $scope.config = angular.extend({}, $scope.tmp_config);
    }).finally(function() {
        $scope.content_loader_is_visible = false;
    });

    $scope.clickSave = function() {
        Previewer.saveData($scope.tmp_config).success(function(data) {
            if(data.success) {
                $scope.message.setText(data.message)
                    .isError(false)
                    .show()
                ;
                $scope.config = angular.extend({}, $scope.tmp_config);
            } else {
                $scope.message.setText(data.message)
                    .isError(true)
                    .show()
                ;
            }
        }).error(function(data){
            $scope.message.setText(data.message)
                .isError(true)
                .show()
            ;
        });
    };

    //Uploaders config
    $scope.uploaders = new Array({type:"startup_image",uploader : "img_320_uploader"},
        {type : "startup_image_retina",uploader : "img_640_uploader"},
        {type : "startup_image_retina_4",uploader : "img_640_1136_uploader"},
        {type : "startup_image_iphone_6_plus",uploader : "img_1242_uploader"},
        {type : "startup_image_iphone_6",uploader : "img_750_uploader"},
        {type : "icon",uploader : "img_icon_uploader"},
        {type : "logo",uploader : "img_logo_uploader"});

    //Setting up uploaders
    for (var i = 0; i < $scope.uploaders.length; i++) {
        var code = $scope.uploaders[i].uploader;
        $scope[code] = new FileUploader({
            url: Url.get("previewer/backoffice_edit/upload")
        });
    }

    $scope.canDownloadPreviewer = function() {
        return $scope.config.app_name &&
            $scope.config.bundle_id &&
            $scope.config.background_color &&
            $scope.config.font_color &&
            $scope.config.info_text_1 &&
            $scope.tmp_config.startup_image &&
            $scope.tmp_config.startup_image_retina &&
            $scope.tmp_config.startup_image_retina_4 &&
            $scope.tmp_config.startup_image_iphone_6_plus &&
            $scope.tmp_config.startup_image_iphone_6 &&
            $scope.tmp_config.logo &&
            $scope.tmp_config.icon
        ;
    };

    //Prepare each uploaders
    $scope.prepareUploaders = function() {

        for(var i = 0; i < $scope.uploaders.length; i++) {

            var code = $scope.uploaders[i].uploader;
            var type_upload = $scope.uploaders[i].type;
            $scope[code].formData.push({"type_upload" : type_upload});

            //Filters on file format
            switch(type_upload.substring(0, 4)){
                case "icon":
                case "logo":
                    $scope[code].filters.push({
                        name: 'image_png_only',
                        fn: function (item, options) {
                            var type = '|' + item.type.slice(item.type.lastIndexOf('/') + 1) + '|';
                            return '|png|'.indexOf(type) !== -1;
                        }
                    });
                    break;
                case "star":
                    $scope[code].filters.push({
                        name: 'image_only',
                        fn: function (item, options) {
                            var type = '|' + item.type.slice(item.type.lastIndexOf('/') + 1) + '|';
                            return '|jpg|png|jpeg|gif|'.indexOf(type) !== -1;
                        }
                    });
                    break;

            }

            //Filters on file width & height
            switch(type_upload) {
                case "startup_image":
                    $scope[code].formData.push({minwidth: 320, minheight: 480, maxwidth: 320, maxheight: 480});
                    break;
                case "startup_image_retina":
                    $scope[code].formData.push({minwidth: 640, minheight: 960, maxwidth: 640, maxheight: 960});
                    break;
                case "startup_image_retina_4":
                    $scope[code].formData.push({minwidth: 640, minheight: 1136, maxwidth: 640, maxheight: 1136});
                    break;
                case "startup_image_iphone_6_plus":
                    $scope[code].formData.push({minwidth: 1242, minheight: 2208, maxwidth: 1242, maxheight: 2208});
                    break;
                case "startup_image_iphone_6":
                    $scope[code].formData.push({minwidth: 750, minheight: 1334, maxwidth: 750, maxheight: 1334});
                    break;
                case "icon":
                    $scope[code].formData.push({minwidth: 180, minheight: 180, maxwidth: 1024, maxheight: 1024});
                    break;
                case "logo":
                    $scope[code].formData.push({minwidth: 500, minheight: 150, maxwidth: 500, maxheight: 150});
                    break;
            }

            $scope[code].onWhenAddingFileFailed = function(item, filter, options) {
                switch(filter.name){
                    case "image_png_only":
                        $scope.message.setText(Label.uploader.error.type.png).isError(true).show();
                        break;
                    case "image_only":
                        $scope.message.setText(Label.uploader.error.type.image).isError(true).show();
                        break;
                }
            };

            $scope[code].onAfterAddingFile = function(item, filter, options) {
                item.upload();
            };

            $scope[code].onSuccessItem = function(fileItem, response, status, headers) {
                if(angular.isObject(response) && response.success) {
                    switch(fileItem.formData[0].type_upload) {
                        case "startup_image":
                            $scope.tmp_config.startup_image = fileItem.file.name;
                            break;
                        case "startup_image_retina":
                            $scope.tmp_config.startup_image_retina = fileItem.file.name;
                            break;
                        case "startup_image_retina_4":
                            $scope.tmp_config.startup_image_retina_4 = fileItem.file.name;
                            break;
                        case "startup_image_iphone_6_plus":
                            $scope.tmp_config.startup_image_iphone_6_plus = fileItem.file.name;
                            break;
                        case "startup_image_iphone_6":
                            $scope.tmp_config.startup_image_iphone_6 = fileItem.file.name;
                            break;
                        case "icon":
                            $scope.tmp_config.icon = fileItem.file.name;
                            break;
                        case "logo":
                            $scope.tmp_config.logo = fileItem.file.name;
                            break;
                    }
                    $scope.message.setText(response.message)
                        .isError(false)
                        .show()
                    ;

                } else {
                    $scope.message.setText(Label.uploader.error.general)
                        .isError(true)
                        .show()
                    ;
                }
            };
            $scope[code].onErrorItem = function(fileItem, response, status, headers) {
                $scope.message.setText(response.message)
                    .isError(true)
                    .show()
                ;
            };

        }
    };
    $scope.prepareUploaders();
}).controller("PreviewerEditModalController", function($scope, Header, Url, Previewer, Label, FileUploader) {
    $scope.header = new Header();
    $scope.header.button.left.is_visible = false;
    $scope.content_loader_is_visible = true;
    $scope.tmp_config = {};

    $scope.paragraph = {one:null,two:null};
    Previewer.language_code = "en";

    //Uploaders config
    $scope.uploaders = [{
            type:"modal_image",
            uploader : "previewer_img_uploader"
        },
        {
            type : "qrcode_alt_image",
            uploader : "qrcode_img_uploader"
        }];

    $scope.prepareUploaders = function() {

        for(var i = 0; i < $scope.uploaders.length; i++) {

            var code = $scope.uploaders[i].uploader;
            var type_upload = $scope.uploaders[i].type;

            $scope[code] = new FileUploader({
                url: Url.get("previewer/backoffice_modal/upload")
            });

            $scope[code].formData.push({type_upload: type_upload});

            //Filters on file format
            $scope[code].filters.push({
                name: 'image_only',
                fn: function (item, options) {
                    var type = '|' + item.type.slice(item.type.lastIndexOf('/') + 1) + '|';
                    return '|jpg|png|jpeg|gif|'.indexOf(type) !== -1;
                }
            });

            $scope[code].onWhenAddingFileFailed = function (item, filter, options) {
                $scope.message.setText(Label.uploader.error.type.png).isError(true).show();
            };

            $scope[code].onAfterAddingFile = function (item, filter, options) {
                item.formData.push({language_code: Previewer.language_code});
                item.upload();
            };

            $scope[code].onSuccessItem = function (fileItem, response, status, headers) {
                if (angular.isObject(response) && response.success) {

                    switch(fileItem.formData[0].type_upload) {
                        case "qrcode_alt_image":
                            $scope.config.qrcode_alt_image = "/" + fileItem.formData[0].type_upload + "/" + response.file;
                            break;
                        case "modal_image":
                            $scope.config.modal_image = "/" + fileItem.formData[0].type_upload + "/" + response.file;
                            break;
                    }

                    $scope.message.setText(response.message)
                        .isError(false)
                        .show()
                    ;

                } else {
                    $scope.message.setText(Label.uploader.error.general)
                        .isError(true)
                        .show()
                    ;
                }
            };

            $scope[code].onErrorItem = function (fileItem, response, status, headers) {
                $scope.message.setText(response.message)
                    .isError(true)
                    .show()
                ;
            };
        }
    };

    $scope.prepareUploaders();

    Previewer.loadDataModal().success(function(data) {
        $scope.header.title = data.title;
        $scope.header.icon = data.icon;
    });

    $scope.loadContent = function() {
        Previewer.find().success(function (data) {
            $scope.languages = data.languages;
            $scope.config = data.previewer ? data.previewer : {};
            $scope.config.apple_store_url = $scope.tmp_config.apple_store_url ? $scope.tmp_config.apple_store_url : $scope.config.apple_store_url;
            $scope.config.play_store_url = $scope.tmp_config.play_store_url ? $scope.tmp_config.play_store_url : $scope.config.play_store_url;
            $scope.tmp_config = $scope.config;
            $scope.config.language_code = data.current_language;
            $scope.config.show_modal_button = data.show_modal_button;
            $scope.as_saved = data.previewer ? true : false;
            console.log(data);
        }).finally(function () {
            $scope.content_loader_is_visible = false;
        });
    };

    $scope.findPreviewerByLanguage = function(language_code) {
        Previewer.language_code = language_code;
        $scope.loadContent();
        $scope["previewer_img_uploader"].queue = [];
    };

    $scope.saveModal = function() {
        $scope.is_loading = true;
        Previewer.saveModal($scope.config).success(function(data) {
            $scope.as_saved = true;
            $scope.is_loading = false;
            $scope.message.setText(data.message)
                .isError(false)
                .show()
            ;
        });
    };

    $scope.loadContent();
});
