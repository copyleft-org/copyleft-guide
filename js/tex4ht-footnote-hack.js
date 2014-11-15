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
