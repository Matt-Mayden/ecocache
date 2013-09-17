define([], function() {
    var objectModel = Backbone.Model.extend({
        initialize: function() {
        },
        url: APP_BASE_URL + '/object'
    });

    return objectModel;
});