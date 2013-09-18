define([], function() {
    var objectPropertyModel = Backbone.Model.extend({
        initialize: function() {
        },
        url: APP_BASE_URL + '/object_property'
    });

    return objectPropertyModel;
});