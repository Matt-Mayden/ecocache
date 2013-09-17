define(['text!view/shared_view.html',
    'view/CategoryView',
    'collection/CategoryCollection'], function(envTemplate, CategoryView, CategoryCollection) {
    var envView = Backbone.View.extend({
        el: '#app_container',
        initialize: function() {
            this.collection.fetch({
                success: _.bind(function() {
                    this.render();
                }, this)
            });
            $(this.el).unbind();
        },
        render: function() {
            $(this.el).html(_.template(envTemplate)({
                collection: this.collection.toJSON(),
                message: 'Where are you?'
            }));
            return this;
        },
        events: {
            "click .btn-default": "getCategories"
        },
        getCategories: function(e) {
            var envId = e.target.value;
            if (envId) {
                var categoryCollection = new CategoryCollection();
                var categoryView = new CategoryView({collection: categoryCollection});
            }

        }
    });
    return envView;
});