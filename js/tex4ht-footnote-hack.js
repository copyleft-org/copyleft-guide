//  Released as CC0: http://creativecommons.org/publicdomain/zero/1.0/
//   by Bradley M. Kuhn <bkuhn@ebb.org>

$(function() {
$( ".footnote-mark" ).tooltip({
    items: "a",
    hide: { duration: 5000 },
    position: {
        my: "center bottom-20",
        at: "center left",
        using: function( position, feedback ) {
            $( this ).css( position );
            $( "<div>" )
                .addClass( "arrow" )
                .addClass( feedback.vertical )
                .addClass( feedback.horizontal )
                .appendTo( this );
        }
    },
    content: function() {
        var element = $( this );
        if ( element.is( 'a' ) ) {
            var footnoteVal = element.attr( "href" );
            return tex4ht[footnoteVal.substring(footnoteVal.search("#") + 1)];
        }
    }});
});
// The following code was borrowed from:
// https://github.com/pierre-rouanet/sphinxjp.themes.basicstrap/commit/05ac6055be8cbb6097f16ab106df5244c19a067f
// which was licensed under the MIT license.

$(window).load(function () {
    /*
     * Scroll the window to avoid the topnav bar
     * https://github.com/twitter/bootstrap/issues/1768
     */
    if ($(".navbar.navbar-fixed-top").length > 0) {
        // var navHeight = $(".navbar").height(),
        var navHeight = 40,
            shiftWindow = function() { scrollBy(0, -navHeight - 10); };

        if (location.hash) {
            setTimeout(shiftWindow, 1);
        }
        window.addEventListener("hashchange", shiftWindow);
    }
});
