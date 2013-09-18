define(['text!view/shared_view.html',
    'view/ObjectView',
    'collection/ObjectCollection'], function(categoryTemplate, ObjectView, ObjectCollection) {
    var envView = Backbone.View.extend({
        el: '#app_container',
        environment_id : '',
        initialize: function(options) {
            this.collection.fetch({
                data: { environment_id: options.environment_id },
                success: _.bind(function() {
                    this.render();
                }, this)
            });
            $(this.el).unbind();
        },
        render: function() {
            $(this.el).html(_.template(categoryTemplate)({
                collection: this.collection.toJSON(),
                message: 'What did you see?',
                buttonName: 'category'
            }));
            return this;
        },
        events: {
            "click .category": "getObjects"
        },
        getObjects: function(e) {
            var categoryId = e.currentTarget.value;
            if (categoryId) {
                var objectCollection = new ObjectCollection();
                new ObjectView({collection: objectCollection});
            }

        }
    });
    return envView;
});