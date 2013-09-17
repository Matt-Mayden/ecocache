define([], function() {
    var categoryModel = Backbone.Model.extend({
        initialize: function() {
        },
        url: APP_BASE_URL + '/category'
    });

    return categoryModel;
});