requirejs.config(
  baseUrl: "public/javascripts",
  paths:
    backbone: "../bower_components/backbone/backbone-min",
    "backbone.picky": "../bower_components/backbone.picky/lib/amd/backbone.picky.min",
    "backbone.syphon": "../bower_components/backbone.syphon/lib/amd/backbone.syphon.min",
    jquery: "../bower_components/jquery/jquery.min",
    "jquery-ui": "../bower_components/jquery-ui/ui/minified/jquery-ui.min",
    underscore: "../bower_components/underscore/underscore-min",
    json2: "../bower_components/json2/json2",
    localStorage: "../bower_components/backbone.localStorage/backbone.localStorage-min",
    marionette: "../bower_components/marionette/lib/core/amd/backbone.marionette.min",
    spin: "../bower_components/spin.js/dist/spin.min/",
    tpl: "../bower_components/requirejs-tpl/tlp/",
    handlebars: "../bower_components/handlebars/handlebars",
    mocha: "../bower_components/mocha/mocha",
    chai: "../bower_components/chai/chai",
    chaibackbone: "../bower_components/chai-backbone/chai-backbone",


  shim: 
    underscore: 
      exports: "_",
    backbone: 
      deps: ["jquery", "underscore", "json2"],
      exports: "Backbone",
    "backbone.picky": ["backbone"],
    "backbone.syphon": ["backbone"],
    marionette: 
      deps: ["backbone"],
      exports: "Marionette",
    "jquery-ui": ["jquery"],
    localstorage: ["backbone"],
    "spin.jquery": ["spin", "jquery"]
 
