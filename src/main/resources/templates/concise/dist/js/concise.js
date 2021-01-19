/* ---------------      Bootstrap Dropdown    ------------------- */
/*
 * Project: Twitter Bootstrap Hover Dropdown
 * Author: Cameron Spear
 * Contributors: Mattia Larentis
 *
 * Dependencies?: Twitter Bootstrap's Dropdown plugin
 *
 * A simple plugin to enable twitter bootstrap dropdowns to active on hover and provide a nice user experience.
 *
 * No license, do what you want. I'd love credit or a shoutout, though.
 *
 * http://cameronspear.com/blog/twitter-bootstrap-dropdown-on-hover-plugin/
 */
;(function($, window, undefined) {
    // outside the scope of the jQuery plugin to
    // keep track of all dropdowns
    var $allDropdowns = $();

    // if instantlyCloseOthers is true, then it will instantly
    // shut other nav items when a new one is hovered over
    $.fn.dropdownHover = function(options) {

        // the element we really care about
        // is the dropdown-toggle's parent
        $allDropdowns = $allDropdowns.add(this.parent());

        return this.each(function() {
            var $this = $(this).parent(),
                defaults = {
                    delay: 100,
                    instantlyCloseOthers: true
                },
                data = {
                    delay: $(this).data('delay'),
                    instantlyCloseOthers: $(this).data('close-others')
                },
                options = $.extend(true, {}, defaults, options, data),
                timeout;

            $this.hover(function() {
                if(options.instantlyCloseOthers === true)
                    $allDropdowns.removeClass('open');

                window.clearTimeout(timeout);
                $(this).addClass('open');
            }, function() {
                timeout = window.setTimeout(function() {
                    $this.removeClass('open');
                }, options.delay);
            });
        });
    };
    $('[data-hover="dropdown"]').dropdownHover();
})(jQuery, this);

/* ---------------      Swiper      ------------------- */
var swiper = new Swiper('.swiper-container', {
    slidesPerView: 1,
    spaceBetween: 0,
    loop: true,
    speed:333,
    effect : 'fade',
    pagination: {
        el: '.swiper-pagination',
        clickable: true,
        //type: 'fraction',
        //type: 'progressbar',
    },
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
    autoplay : {
        delay: 3000,
        disableOnInteraction: false,
    },
});
/* ---------------      返回顶部      ------------------- */
function setlayer(alias, str, icon) {
    var html = "";
    if (alias == "text") {
        html += "<div class=\"text-item\">";
        html += "<span>";
        html += "<i class=\"" + icon + "\"></i>" + str + "</span>";
        html += "</div>";
    } else {
        html += "<div class=\"img-item\">";
        html += "<img src=\"" + str + "\">";
        html += "</div>";
    }
    return html;
}
$(function() {
    $(".leftNav-item li").hover(function(e) {
            var alias = $(this).attr("lay-data");
            var str = $(this).attr("data-fooc");
            var icon = $(this).children("i").attr("class");
            if (!alias) {
                return false;
            }
            $(this).append(setlayer(alias, str, icon));
            $(this).children("div").show(300);
        },
        function(e) {
            $(this).children("div").remove();
        });
    $(window).scroll(function() {
        var scrollTop = $(document).scrollTop();
        if (scrollTop >= 200) {
            $(".for-top").show();
        } else {
            $(".for-top").hide();
        }
    });
    $(".for-top").click(function() {
        console.log("Are You Ok?");
        $('html,body').animate({
                scrollTop: 0
            },
            700);
    })
});

/* ---------------      nav      ------------------- */
$(function () {
    $('a[nav]').each(function(){
        $this = $(this);
        if($this[0].href == String(window.location)){
            $this.closest('li').addClass("active");
        }
    });
});

/* ---------------      navbar-fixed-top      ------------------- */
(function ($) {
    "use strict";
    $(window).on('load', function () {
        nhPreloader();
        bpMenuareaFixed();
    });
    function nhPreloader() {
        if ($('#preloader').length) {
            $('#preloader').fadeOut('slow', function () {
                $(this).remove();
            });
        }
    }
    function bpMenuareaFixed() {
        if ($('.header').length) {
            $(window).on('scroll', function () {
                if ($(window).scrollTop() > 0) {
                    $('.header').addClass('navbar-fixed-top');
                } else {
                    $('.header').removeClass('navbar-fixed-top');
                }
            });
        }
    }
}(jQuery));

/*! Right-评论 start */
$(function(){
    var nav=$(".top"); //得到导航对象
    var win=$(window); //得到窗口对象
    var sc=$(document);//得到document文档对象。
    win.scroll(function(){
        if(sc.scrollTop()>=290){
            nav.addClass("fixed_posts");
            $(".fixed_postss").fadeIn();
        }else{
            nav.removeClass("fixed_posts");
            $(".fixed_postss").fadeOut();
        }
    })
});

var text =' concise博客主题 v2 ';
var concise ='%c' + text;
console.log('\n' + ' %c (づ￣ ³￣)づヾ 作者：CUI ' + concise + ' ' + '\n' + '\n', 'color: #fadfa3; background: #030307; padding:5px 0;', 'background: #fadfa3; padding:5px 0;');
