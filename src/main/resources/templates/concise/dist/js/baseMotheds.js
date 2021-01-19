/*
*  name: baseMotheds
*  author: Duke
*  date: 2019/03/16 10:30
*/
$(function(){
    baseMotheds.init();
});
// baseMotheds
var baseMotheds = function(){
    // scrollHead
    var scrollHead = function(){
        var headGroup = $('#headGroup').height();
        var headFullTabs = $('#headFullTabs').height();
        var sroll = headGroup-headFullTabs;
        $(window).bind("scroll resize", function() {
        	if ($(window).scrollTop() > sroll) {
        		$('#headFullTabs').addClass('index');
        		$('#indexGroup').css('padding-top','0');
        	}else{
        		$('#headFullTabs').removeClass('index');
        		$('#indexGroup').css('padding-top','0');
        	}
        });
    };
    return{
        init: function(){
            scrollHead();

        }
    }
}();

