define(['text!view/test.html'], function(categoryTemplate) {
    var categoryView = Backbone.View.extend({
        template: _.template(categoryTemplate)
    });

    return categoryView;
});