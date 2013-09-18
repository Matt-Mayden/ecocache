define([], function() {
    var discoveryModel = Backbone.Model.extend({
        initialize: function() {
        },
        url: APP_BASE_URL + '/discovery'
    });

    return discoveryModel;
});