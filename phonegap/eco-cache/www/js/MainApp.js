define([
    "view/EnvironmentView",
    'collection/EnvironmentCollection'
], function(
        EnvironmentView,EnvironmentCollection
        ) {

    var initialize = function() {
        
        var envCollection = new EnvironmentCollection();
        var envView = new EnvironmentView({collection : envCollection});

    };

    return {
        initialize: initialize
    };


});
