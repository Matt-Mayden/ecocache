define([
    //dependancies
    "model/CategoryModel"
],
        function(CategoryModel) {
            return Backbone.Collection.extend({
                url: APP_BASE_URL + '/geohack/category.php',
                model: CategoryModel
            });
        });


