---
# transpile the coffeescript
---

do ($ = jQuery) ->

  $('.js-relative-date')

    .on 'relativeDate:today relativeDate:past', ->
      $el = $ @
      $link = $el.find '.js-relative-date-url'
      $link.attr
        href: $link.data 'eventUrl'
        target: ''

    .relativeToday()

  $('.github-profile')

    .on 'githubProfile:avatarUrl', (event, profile) ->
      avatar = $('<img>')
        .addClass 'github-profile-avatar'
        .attr src: profile.avatarUrl

      $(@).find('.github-profile-link').prepend avatar

    .githubProfile()
