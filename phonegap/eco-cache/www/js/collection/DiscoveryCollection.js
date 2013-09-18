define([
    //dependancies
    "model/DiscoveryModel"
],
        function(DiscoveryModel) {
            return Backbone.Collection.extend({
                url: APP_BASE_URL + '/geohack/ecocache/app/Discovery',
                model: DiscoveryModel
            });
        });


