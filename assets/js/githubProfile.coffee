---
# transpile the coffeescript
---

do ($ = jQuery) ->

  getProfile = (username) ->
    $.getJSON "https://api.github.com/users/#{username}"

  $.fn.githubProfile = ->

    @.each ->
      $el = $ @
      username = $el.data 'github-username'

      getProfile(username)
        .done (profile) ->
          $el.addClass 'js-github-profile-avatar'
            .trigger 'githubProfile:avatarUrl',
              username: username
              avatarUrl: profile.avatar_url
