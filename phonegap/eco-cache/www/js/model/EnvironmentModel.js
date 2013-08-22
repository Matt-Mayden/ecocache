define([], function() {
    var envModel = Backbone.Model.extend({
        initialize: function() {
        },
        url: APP_BASE_URL + '/geohack/environment.php'
    });

    return envModel;
});