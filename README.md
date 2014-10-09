prolog-getting-started
======================

Sample application for heroku-prolog-buildpack. Once cloned, assuming you have the heroku toolbelt installed (see http://toolbelt.heroku.com) you can create an app from it like so: (You cannot use my-prolog-app though - replace it with your own project name)

   * heroku apps:create my-prolog-app --buildpack https://github.com/thetrime/heroku-prolog-buildpack.git
   * heroku addons:add heroku-postgresql:hobby-dev
   * git push heroku master

Unfortunately compilation time is limited to 15 minutes, and on the free tier you can easily exceed that just building SWI-Prolog. To get around this, popular precompiled versions (including whatever version is the default) will be available inside the buildpack. 
