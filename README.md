prolog-getting-started
======================

Sample application for heroku-prolog-buildpack. Once cloned, you can create an app from it like so:

   * heroku apps:create my-prolog-app --buildpack https://github.com/thetrime/heroku-prolog-buildpack.git
   * heroku addons:add heroku-postgresql:hobby-dev
   * git push heroku master

This will take a long time the first time you run it, since it must compile SWI-Prolog and all its dependencies. These are cached, so subsequent pushes will take only a few seconds
