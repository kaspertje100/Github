(function () {
    console.log('forms.js');
 
    var validators = {
        required : function(input) {
                var val = dojo.attr(input, 'value');
 
                if ( val && val.length > 0 ) {
                    return true;
                } else {
                    return false;
                }            
            },
 
        fail : function(input) {
            return false;
        }
    };
 
    dojo.ready(function() {
        console.log('dojo ready');
        var fields = dojo.query('form div');
 
        fields.onchange(function(ev) {
            console.log('got event');
            var row = ev.currentTarget,
                action = dojo.attr(row, 'validation'),
                input  = ev.target,
                pass;
 
            var func = validators[action];        
 
            console.dir(row);
            console.log('func = ' + func + '; action = ' + action);
            if ( func !== undefined ) {
                pass = func(input);
 
                if ( ! pass ) {
                    dojo.addClass(row, 'error');
                } else {
                    dojo.removeClass(row, 'error');
                }
 
            }
        });
    });
 
 
}());