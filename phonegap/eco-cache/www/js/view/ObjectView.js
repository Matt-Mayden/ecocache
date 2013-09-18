define(['text!view/shared_view.html',
    'view/ObjectPropertyView',
    'model/ObjectPropertyModel'], function(objectTemplate, ObjectPropertyView, ObjectPropertyModel) {
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
                new ObjectPropertyView({model: new ObjectPropertyModel()});
            }

        }
    });
    return envView;
});