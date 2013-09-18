define(['text!view/discovery_view.html',
    'collection/DiscoveryCollection'], function(discoveryTemplate, DiscoveryCollection) {
    var envView = Backbone.View.extend({
        el: '#app_container',
        initialize: function(options) {
            var collection = new DiscoveryCollection();
            this.collection = collection;
            this.collection.fetch({
                success: _.bind(function() {
                    this.render();
                }, this)
            });
            $(this.el).unbind();
        },
        render: function() {
            $(this.el).html(_.template(discoveryTemplate)({
                collection: this.collection.toJSON()
            }));
            return this;
        },
        events: {
            "click .category": "getObjects"
        }
    });
    return envView;
});
