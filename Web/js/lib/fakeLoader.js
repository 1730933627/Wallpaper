(function ($) {
    $.fakeLoader = function(options) {
        var settings = $.extend({
            targetClass:'fakeLoader',
            timeToHide:600,               
            bgColor: '#fff', 
            spinner:'spinner',
            color:'#63B8FF'
        }, options);
        var spinner = '<div class="fl fl-spinner spinner"><div class="rect1"></div><div class="rect2"></div><div class="rect3"></div><div class="rect4"></div><div class="rect5"></div></div>';
        var el = $('body').find('.' + settings.targetClass);
        el.each(function() {
            el.html(spinner);
        });
        el.css({
            'backgroundColor':settings.bgColor
        });
        setTimeout(function () {
            $(el).fadeOut();
        }, settings.timeToHide);
    }; 
}(jQuery));




