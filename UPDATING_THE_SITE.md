# Updating the Site

If this is your first time updating the site, you will need ruby > 2.0
and bundler installed.

## Installing Ruby, Bundler, and Jekyll

### On OS X

Yosemite and Mavericks include 2.0 already. If you're on an earlier
version of OS X, use Homebrew.

```sh
$ brew install ruby
```

```sh
$ gem install bundler
```

You will probably need to use sudo when installing bundler if you're
using system included ruby.

### On Ubuntu

Install [rvm](https://rvm.io/rvm/install) with `--ruby` then use it
with (add `--default` to use this version of ruby on bash startup):

```sh
$ rvm use ruby --default
```

```sh
$ gem install bundler
```

### Install Jekyll

Use bundle to install Jekyll (sudo is not needed on any platform):

```sh
$ bundle install
```

## Previewing the Site

Be sure to set an empty baseurl when serving up the site locally to work
around [Github Pages
urls](http://jekyllrb.com/docs/github-pages/#project-page-url-structure):

```sh
jekyll serve --baseurl ''
```

## Adding Events

Events are [Jekyll posts](http://jekyllrb.com/docs/posts/). The filename
must match the naming convention:

```
YEAR-MONTH-DAY-title.MARKUP
```

They also must start with [front
matter](http://jekyllrb.com/docs/frontmatter/) like the following:

```md
---
title: Study Abroad at Vinli: Workshop Make Me Hapi
sponsor: vinli
studyAbroad: true
meetup: http://www.meetup.com/Nodeschool-Dallas/events/227196166/
---
```

Where

- __title__: Name of the event
- __sponsor__: Adds the correct sponsor badge to the event link
  (see sponsors section below)
- __studyAbroad__ *(optional)*: Only set this to true if this is a study
  abroad event. This adds a study abroad badge to the event link and
  drives interested parties to our
  [study abroad info]({{ site.baseurl }}/study-abroad/).
- __meetup__: Links to the meetup event.

## Adding a Sponser

TODO: describe changes needed to `_sass/_sponsors.scss`.
