define(['text!view/shared_view.html',
    'view/ObjectView',
    'collection/ObjectCollection'], function(categoryTemplate, ObjectView, ObjectCollection) {
    var envView = Backbone.View.extend({
        el: '#app_container',
        environment_id: '',
        initialize: function(options) {
            this.environment_id = options.environment_id;
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
                message: 'What did you see?'
            }));
            return this;
        },
        events: {
            "click .btn-default": "getObjects"
        },
        getObjects: function(e) {
            var categoryId = e.target.value;
            if (categoryId) {
                var objectCollection = new ObjectCollection();
                new ObjectView({environment_id: this.environment_id, category_id: categoryId, collection: objectCollection});
            }

        }
    });
    return envView;
});