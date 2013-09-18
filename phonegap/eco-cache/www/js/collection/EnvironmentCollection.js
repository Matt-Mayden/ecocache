define([
    //dependancies
    "model/EnvironmentModel"
],
        function(EnvironmentModel) {
            return Backbone.Collection.extend({
                url: APP_BASE_URL + '/geohack/ecocache/app/Environment',
                model: EnvironmentModel
            });
        });


