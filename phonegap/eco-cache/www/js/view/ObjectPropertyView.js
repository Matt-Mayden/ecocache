define(['text!view/object_properties_view.html',
    'view/ObjectPropertyView'], function(objectPropertyTemplate, ObjectPropertyView) {
    var envView = Backbone.View.extend({
        el: '#app_container',
        initialize: function() {
            $(this.el).unbind();
            this.render();
        },
        render: function() {
            $(this.el).html(_.template(objectPropertyTemplate)({
                
            }));
            return this;
        },
        events: {
           
        }
    });
    return envView;
});