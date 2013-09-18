define(['text!view/object_properties_view.html',
    'view/ObjectPropertyView',
    'view/DiscoveryView'], function(objectPropertyTemplate, ObjectPropertyView, DiscoveryView) {
    var envView = Backbone.View.extend({
        el: '#app_container',
        options: '',
        initialize: function(options) {
            this.options = options;
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
            for(var key in this.options){
                if(typeof(this.options[key]) != 'object'){
                    data[key] = this.options[key];
                }
            }
            this.model.set(data);
            this.model.save(null, {
                success: _.bind(function(model, response) {
                    new DiscoveryView();
                },this)
            });
            
        }
    });
    return envView;
});