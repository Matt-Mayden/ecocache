define([
    //dependancies
    "model/ObjectModel"
],
        function(ObjectModel) {
            return Backbone.Collection.extend({
                url: APP_BASE_URL + '/geohack/object.php',
                model: ObjectModel
            });
        });


