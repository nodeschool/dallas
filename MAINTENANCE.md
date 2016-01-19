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

Events are [Jekyll posts](http://jekyllrb.com/docs/posts/) you add to
the `_posts` folder. The filename must match the naming convention:

```
YEAR-MONTH-DAY-title.MARKUP
```

They also must start with [front
matter](http://jekyllrb.com/docs/frontmatter/) like the following:

```md
---
title: Study Abroad at Vinli: Workshop Make Me Hapi
sponsors:
- vinli
studyAbroad: true
meetupId: 227196166
---
```

Where

- __title__: Name of the event
- __sponsors__: List of sponsors that adds their logo to the event (see
  sponsors section below)
- __studyAbroad__ *(optional)*: Only set this to true if this is a study
  abroad event. This adds a study abroad badge to the event link and
  drives interested parties to our
  [study abroad info]({{ site.baseurl }}/study-abroad/).
- __meetupId__: Event Id of the meetup.

### Pseudo Event Drafts

When adding events for future dates, the landing page will link to the
meetup for that event until the day of then switch to linking to the
post. This let's you post just the front-matter details for the event
which will advertise upcoming events while letting us defer filling in
the content until the day before.

## Adding a Sponser

If we have a new sponsor, you will need to update a couple spots to get
their sponsor logo to show up in the event. First add the sponsor name
and url to `_data/sponsors.yml`. Next add their logo to
`assets/images/sponsors` where the name of the file is `[sponsor.name |
slugify].png`, e.g. if the sponsor name is Addison Treehouse, the logo
name will need to be `addison-treehouse.png`.

Now you can add the sponsor to the front-matter of your event. You'll
need to use the slug version in the front matter as well:

```
---
sponsors:
- addison-treehouse
---
```
