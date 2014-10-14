#= require "_holderjs-theme"

(($) ->

  $ ($) ->
    $html = $ "html"

    console.log "Hello!"
    console.log "jQuery", $.fn.jquery

    $html.addClass "domready"
    $(window).on "load", -> $html.addClass "loaded"

)(jQuery)
