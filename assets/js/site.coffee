---
# transpile the coffeescript
---

do ($ = jQuery) ->

  $('.js-relative-date')

    .on
      'relativeDate:today relativeDate:past': ->
        $el = $ @
        $link = $el.find '.js-relative-date-url'
        $link.attr
          href: $link.data('eventUrl')
          target: ''

    .relativeToday()
