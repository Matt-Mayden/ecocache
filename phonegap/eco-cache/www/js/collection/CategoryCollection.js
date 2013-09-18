define([
    //dependancies
    "model/CategoryModel"
],
        function(CategoryModel) {
            return Backbone.Collection.extend({
                url: APP_BASE_URL + '/geohack/ecocache/app/Category',
                model: CategoryModel
            });
        });


