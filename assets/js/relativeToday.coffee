---
# transpile the coffeescript
---

do ($ = jQuery) ->

  relativeToday = (other) ->
    today = new Date

    [other, today] = for date in [other, today]
      do (date) ->
        date.setHours 0, 0, 0, 0

    if other > today then 1
    else if other is today then 0
    else -1

  $.fn.relativeToday = () ->

    @.each ->
      $el = $ this
      relativeDate = new Date $el.data 'relative-date'
      rel = relativeToday relativeDate

      if rel > 0
        $el.addClass('js-relative-future').trigger 'relativeDate:future'
      else if rel < 0
        $el.addClass('js-relative-past').trigger 'relativeDate:past'
      else
        $el.addClass('js-relative-today').trigger 'relativeDate:today'

    @
