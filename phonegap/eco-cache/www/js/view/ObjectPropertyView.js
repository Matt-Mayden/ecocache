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
            "click .colorswatch": "toggleColourButtonGroup",
            "click .submit": "submit"
        },
        toggleColourButtonGroup: function(e) {
            $('.colorswatch').each(function(index) {
                $(this).removeClass('active');
            });
            $(e.target).addClass('active');
        },
        submit: function(e) {
            var data = {};
            e.preventDefault();
            $(this.el).find(':button.active').each(function(index) {
                if (this.name) {
                    data[this.name] = this.value;
                }
            });
            this.model.set(data);
            this.model.save(null, {
                success: _.bind(function(model, response) {
                    
                },this)
            });
        }
    });
    return envView;
});