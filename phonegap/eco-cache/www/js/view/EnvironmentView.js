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
                message: 'Where are you?',
                buttonName: 'environment'
            }));
            return this;
        },
        events: {
            "click .environment": "getCategories"
        },
        getCategories: function(e) {
                       
            var envId = e.currentTarget.value;
            if (envId) {
                var categoryCollection = new CategoryCollection();
                var categoryView = new CategoryView({environment_id: envId, collection: categoryCollection});
            }

        }
    });
    return envView;
});