---
# transpile the coffeescript
---

do ($ = jQuery) ->

  relativeToday = (dateString) ->
    today = moment()

    if today.isBefore(dateString, 'day') then 1
    else if today.isSame(dateString, 'day') then 0
    else -1

  $.fn.relativeToday = () ->

    @.each ->
      $el = $ this
      rel = relativeToday($el.data 'relative-date')

      if rel > 0
        $el.addClass('js-relative-future').trigger 'relativeDate:future'
      else if rel < 0
        $el.addClass('js-relative-past').trigger 'relativeDate:past'
      else
        $el.addClass('js-relative-today').trigger 'relativeDate:today'

    @
