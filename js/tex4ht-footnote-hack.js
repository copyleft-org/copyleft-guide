//  The code below is released as CC0:
//   http://creativecommons.org/publicdomain/zero/1.0/ by
//     Bradley M. Kuhn <bkuhn@ebb.org>

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
// ####################################################################
// The following code was borrowed from:
// https://github.com/pierre-rouanet/sphinxjp.themes.basicstrap/commit/05ac6055be8cbb6097f16ab106df5244c19a067f
// which was licensed under the permissive MIT license.

// and modified by Bradley M. Kuhn, (C) 2014, also permissive MIT license'd:

//    Permission is hereby granted, free of charge, to any person obtaining a
//    copy of this software and associated documentation files (the
//    "Software"), to deal in the Software without restriction, including
//    without limitation the rights to use, copy, modify, merge, publish,
//    distribute, sublicense, and/or sell copies of the Software, and to
//    permit persons to whom the Software is furnished to do so, subject to
//    the following conditions:

//       The above copyright notice and this permission notice shall be
//       included in all copies or substantial portions of the Software.

//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
//    LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
//    OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
//    WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

// This below code is designed to handle the proper handling of in-page
// anchor offsets.  Specifically, it handles only those in-page anchors which
// have both an href and id attribute to correct for the issue of the a fixed
// bootstrap navbar header which by default causes in-page anchor offsets to
// be obscured by the top navbar.

// This Javascript solution is not as preferable as the pure CSS solution, so
// the pure CSS solution is used for those anchors which have no href
// attribute.

$(window).load(function () {
    /*
     * Scroll the window to avoid the topnav bar
     * https://github.com/twitter/bootstrap/issues/1768
     */
    if ($(".navbar.navbar-fixed-top").length > 0) {
        var navHeight = $(".navbar").height(),
            shiftWindow = function() {
                var ourURL = document.URL;
                if ( (ourURL.search("#fn") > 0) || (ourURL.search("#QQ") > 0)) {
                    scrollBy(0, -navHeight - 5);
                }
            };
        if (location.hash) {
            setTimeout(shiftWindow, 1);
        }
        window.addEventListener("hashchange", shiftWindow);
    }
});
