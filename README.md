![](source/assets/img/meerz-fyze.jpg)


Emissary
========

A [Middleman](http://middlemanapp.com) project template with autoprefixer, [Bower](http://github.com/twitter/bower), [Coffeescript](http://coffeescript.org), [HAML](http://haml.info), and [SASS](http://sass-lang.com).


Features
--------
* Minifies HTML
* Minifies JS (dropping `console` calls)
* [Autoprefixes](https://github.com/porada/middleman-autoprefixer) CSS
* Helpful [helpers](helpers/helpers.rb)
* A [middleman-deploy](http://github.com/tvaughan/middleman-deploy) config snippet to ease FTP deployment
* [Google Analytics](http://google.com/analytics) snippet
* [Markdown](http://daringfireball.net/projects/markdown/) with [Redcarpet](https://github.com/vmg/redcarpet)
* [Middleman Live Reload](http://github.com/middleman/middleman-livereload)
* [Modernizr](http://modernizr.com)
* [normalize-scss](https://github.com/JohnAlbin/normalize-scss)
* [Typekit](http://typekit.com) snippet


Installation
------------
1. Download/clone to: `~/.middleman/emissary`
2. Create your new Middleman project: `middleman init my_new_project --template=emissary`
3. `cd my_new_project && bower install`
4. `bundle exec middleman server`


Adding a package with bower
---------------------------

    bower install jquery --save
    bower install normalize-scss

Then, in your coffeescript:

    #= require jquery

In your sass:

    @import normalize-scss/normalize

If you want to reference the asset directly in your HTML, then you will need to create a file in the asset path that includes the asset via sprockets.


To Do
-----
- Heroku script
- Magic link_to helper


Thanks
------
- Forked from [Headcanon's HTML5 Middleman + Bower template](https://github.com/headcanon/middleman-bower-template)
- [Middleman Template: bootstrap-sass-slim](https://github.com/shimoju/middleman-bootstrap-sass-slim)
- [Danny Prose's Middleman HTML5BP-HAML](https://github.com/dannyprose/Middleman-HTML5BP-HAML) template
- [HTML5 Boilerplate](http://html5boilerplate.com) for helping me make this template.
- [Middleman](http://middlemanapp.com)

*Happy Building!*
