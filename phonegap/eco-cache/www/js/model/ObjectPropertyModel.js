define([], function() {
    var objectPropertyModel = Backbone.Model.extend({
        initialize: function() {
        },
        url: APP_BASE_URL + '/geohack/ecocache/app/Discovery',
    });

    return objectPropertyModel;
});