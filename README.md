# emacs-el.github.io
Website for Emacs.el Podcast!

# Building the site

## Prerequisites

1. ruby
1. middleman ($ `gem install middleman`)
1. bower ($ `npm install -g bower`)
1. git

Get a version of ruby installed using rvm and create a gem set:

1. $ `rvm install 2.2.1`
1. $ `rvm use --default 2.2.1`
1. $ `rvm gemset create emacsel`
1. $ `rvm use @emacsel`

Clone the repo, install the necessary gems and components, and run a local server to view the site with:

1. $ `git clone git://github.com/paperdigits/emacs-el.github.io`
1. $ `cd macs-el.github.io`
1. $ `bower install`
1. $ `bundle install`
1. $ `bundle exec middleman`

Now you can start hacking on `source` directory and watch live changes on [localhost:4567](http://localhost:4567).

For more help follow [Middleman's project template instructions](http://middlemanapp.com/getting-started/welcome/).
