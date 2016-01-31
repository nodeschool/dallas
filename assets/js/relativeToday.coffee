---
# transpile the coffeescript
---

do ($ = jQuery) ->

  classes =
    future: 'js-relative-future'
    past: 'js-relative-past'
    today: 'js-relative-today'

  relativeToday = (dateString) ->
    today = moment()

    if today.isBefore(dateString, 'day') then 1
    else if today.isSame(dateString, 'day') then 0
    else -1

  $.fn.relativeToday = ->

    @.each ->
      $el = $ @
      rel = relativeToday($el.data 'relative-date')

      if rel > 0
        $el.addClass(classes.future).trigger 'relativeDate:future'
      else if rel < 0
        $el.addClass(classes.past).trigger 'relativeDate:past'
      else
        $el.addClass(classes.today).trigger 'relativeDate:today'

    $(@.filter(".#{classes.future}").get().reverse()).each (i) ->
      $(@).addClass "#{classes.future}-#{i+1}"

    @.filter(".#{classes.past}").each (i) ->
      $(@).addClass "#{classes.past}-#{i+1}"

    @
