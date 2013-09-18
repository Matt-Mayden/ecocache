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
                message: 'What did you see?'
            }));
            return this;
        },
        events: {
            "click .btn-default": "getObjects"
        },
        getObjects: function(e) {
            console.log('calling me');
            var categoryId = e.target.value;
            if (categoryId) {
                var objectCollection = new ObjectCollection();
                new ObjectView({collection: objectCollection});
            }

        }
    });
    return envView;
});