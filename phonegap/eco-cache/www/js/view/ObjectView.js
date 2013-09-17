define(['text!view/shared_view.html',
    'view/ObjectPropertyView'], function(objectTemplate, ObjectPropertyView) {
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
                message: 'What exactly did you see?'
            }));
            return this;
        },
        events: {
            "click .btn-default": "displayObjectProperties"
        },
        displayObjectProperties: function(e) {
            var objectId = e.target.value;
            if (objectId) {
                new ObjectPropertyView();
            }

        }
    });
    return envView;
});