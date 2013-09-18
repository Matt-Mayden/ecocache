define(['text!view/shared_view.html',
    'view/ObjectPropertyView',
    'model/ObjectPropertyModel'], function(objectTemplate, ObjectPropertyView, ObjectPropertyModel) {
    var envView = Backbone.View.extend({
        el: '#app_container',
        environment_id: '',
        category_id: '',
        initialize: function(options) {
            this.environment_id = options.environment_id;
            this.category_id = options.category_id;
            this.collection.fetch({
                data: { category_id : options.category_id},
                success: _.bind(function() {
                    this.render();
                }, this)
            });
            $(this.el).unbind();
        },
        render: function() {
            $(this.el).html(_.template(objectTemplate)({
                collection: this.collection.toJSON(),
                message: 'What exactly did you see?',
                buttonName: 'object'
            }));
            return this;
        },
        events: {
            "click .object": "displayObjectProperties"
        },
        displayObjectProperties: function(e) {
            var objectId = e.currentTarget.value;
            if (objectId) {
                new ObjectPropertyView({
                    environment_id: this.environment_id,
                    category_id: this.category_id,
                    object_id: objectId,
                    model: new ObjectPropertyModel()});
            }
        }
    });
    return envView;
});