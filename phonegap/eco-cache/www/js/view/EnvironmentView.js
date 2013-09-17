define(['text!view/environment_view.html'], function(envTemplate) {
    var envView = Backbone.View.extend({
        el: '#app_container',
        initialize: function() {
            this.collection.fetch({
                success: _.bind(function() {
                    this.render();
                }, this)
            });
        },
        render: function() {
            $(this.el).html(_.template(envTemplate)({
                collection: this.collection.toJSON()
            }));
            return this;
        },
        events: {
            "click .btn-default": "getCategories"
        },
        getCategories: function(e) {
            var envId = e.target.value;
            
        }
    });
    return envView;
});