jQuery(document).ready(function ($) {

    $(".acf-map").each(function () {
        map = new_map($(this));
    });

    $('#slideshow').slick({
        prevArrow: '<div class="slick-prev"><i class="fas fa-angle-left"></i></div>',
        nextArrow: '<div class="slick-next"><i class="fas fa-angle-right"></i></div>',
        appendArrows: $("#slideshow")
    });

    var cookieOptionsEl = {
        "palette": {
            "popup": {
                "background": "var(--secondary-color)",
                "text": "var(--primary-color)"
            },
            "button": {
                "background": "transparent",
                "border": "var(--primary-color)",
                "text": "var(--primary-color)"
            }
        },
        "showLink": true,
        "position": "bottom-right",
        "content": {
            "message": "Αυτός ο ιστότοπος χρησιμοποιεί cookies για την παροχή των υπηρεσιών του. Με τη χρήση αυτού του ιστότοπου αποδέχεστε τη χρήση των cookies.",
			"dismiss": "Εντάξει",
			"link": "Μάθετε περισσότερα...",
			"href": "cookies"
        }
        // more info and config options @ https://cookieconsent.insites.com/download/
    }
	
	var cookieOptionsEn = {
        "palette": {
            "popup": {
                "background": "var(--secondary-color)",
                "text": "var(--primary-color)"
            },
            "button": {
                "background": "transparent",
                "border": "var(--primary-color)",
                "text": "var(--primary-color)"
            }
        },
        "showLink": true,
        "position": "bottom-right",
        "content": {
            "message": "This website uses cookies in order to provide its services. By using this website you accept the usage of cookies.",
			"dismiss": "Ok",
			"link": "Learn more...",
			"href": "cookies-en"
        }
        // more info and config options @ https://cookieconsent.insites.com/download/
    }

    if($('body').data('lang') == 'el') {
		_initCookies(cookieOptionsEl);
	} else {
		_initCookies(cookieOptionsEn);
	}
});

// Search box manipulation
$(".search-box").on("focus", function () {
    $(".search-form").css("z-index", "3000");
});

$(".search-box").focusout(function () {
    $(".search-form").css("z-index", "999");
});

// Main menu handling

// Hovering over menu children
$(".dropdown-submenu").mouseover(function () {
    $(this).children('.dropdown-menu-sub').css('display', 'block')
}).mouseout(function () {
    $(this).children('.dropdown-menu-sub').css('display', 'none')
});

// Offcanvas menu handling

// Clicking on Hamburger menu
$('.toggle-nav').click(function () {
    toggleNav();
});

// Clicking on menu children

$('.offcanvas-nav .root-menu-item-has-children > a').click(function (e) {
    e.preventDefault();
})

$('.offcanvas-nav .submenu-item-has-children > a').click(function (e) {
    e.preventDefault();
})

$('.offcanvas-nav .root-menu-item-has-children > a').each(function (e) {
    var $this = $(this);
    var mc = new Hammer(this);
    mc.on("tap", function () {
        if ($this.parent().hasClass('opened_right_now')) {
            $this.parent().children('.nav-drop').css('display', 'none')
            $this.parent().removeClass('opened_right_now')
        } else {
            $this.parents('.offcanvas-nav').children('.nav-main-item').removeClass('opened_right_now')
            $this.parents('.offcanvas-nav').children('.nav-main-item').children('.nav-drop').css('display', 'none')
            $this.parent().children('.nav-drop').css('display', 'block')
            $this.parent().addClass('opened_right_now')
        }
        return false;
    });
    mc.on("press", function () {
        var target_link = $this.attr('href');
        if (target_link && target_link !== "#") {
            window.location.href = target_link;
        }
        return false;
    });
});

$('.offcanvas-nav .submenu-item-has-children > a').each(function (e) {
    var $this = $(this);
    var mc = new Hammer(this);
    mc.on("tap", function () {
        if ($this.parent().hasClass('opened_right_now')) {
            $this.parent().children('.nav-drop').css('display', 'none')
            $this.parent().removeClass('opened_right_now')
        } else {
            $this.parents('.nav-drop').children('.dropdown-submenu').removeClass('opened_right_now')
            $this.parents('.nav-drop').children('.dropdown-submenu').children('.dropdown-menu-sub').css('display', 'none')
            $this.parent().children('.nav-drop').css('display', 'block')
            $this.parent().addClass('opened_right_now')
        }
        return false;
    });
    mc.on("press", function () {
        var target_link = $this.attr('href');
        if (target_link && target_link !== "#") {
            window.location.href = target_link;
        }
        return false;
    });
});

function toggleNav() {
    if ($('#site-wrapper').hasClass('show-nav')) {
        // Do things on Nav Close
        $('#site-wrapper').removeClass('show-nav');
    } else {
        // Do things on Nav Open
        $('#site-wrapper').addClass('show-nav');
    }
}

// Google maps ACF
function new_map($el) {
    var $markers = $el.find(".marker");
    var args = {
        zoom: 16,
        center: new google.maps.LatLng(0, 0),
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        streetViewControl: false,
        mapTypeControlOptions: {
            mapTypeIds: []
        }
    };
    var map = new google.maps.Map($el[0], args);
    map.markers = [];
    $markers.each(function () {
        add_marker($(this), map);
    });
    center_map(map);
    return map;
}

function add_marker($marker, map) {
    var latlng = new google.maps.LatLng(
        $marker.attr("data-lat"),
        $marker.attr("data-lng")
    );
    var marker = new google.maps.Marker({
        position: latlng,
        map: map
    });
    map.markers.push(marker);
    if ($marker.html()) {
        var infowindow = new google.maps.InfoWindow({
            content: $marker.html()
        });
        google.maps.event.addListener(marker, "click", function () {
            infowindow.open(map, marker);
        });
    }
}

function center_map(map) {
    var bounds = new google.maps.LatLngBounds();
    $.each(map.markers, function (i, marker) {
        var latlng = new google.maps.LatLng(
            marker.position.lat(),
            marker.position.lng()
        );
        bounds.extend(latlng);
    });
    if (map.markers.length == 1) {
        map.setCenter(bounds.getCenter());
        map.setZoom(16);
    } else {
        map.fitBounds(bounds);
    }
}

var map = null;

// async declaration of cookie scripts

var _addCookieScripts = function () {
    var headID = document.getElementsByTagName('head')[0];
    var js = document.createElement('script');
    var css = document.createElement('link');

    js.src = '//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.js';

    css.type = 'text/css';
    css.rel = 'stylesheet';
    css.href = '//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.css';

    headID.appendChild(css);
    headID.appendChild(js);
}

var _initCookies = function (options) {
    _addCookieScripts();
    setTimeout(function () {
        window.cookieconsent.initialise(options)
    }, 1000);
}