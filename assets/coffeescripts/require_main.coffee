requirejs.config(
  baseUrl: "public/javascripts",
  paths:
    backbone: "../components/backbone/backbone-min",
    "backbone.picky": "../components/backbone.picky/lib/amd/backbone.picky.min",
    "backbone.syphon": "../components/backbone.syphon/lib/amd/backbone.syphon.min",
    jquery: "../components/jquery/jquery.min",
    "jquery-ui": "../components/jquery-ui/ui/minified/jquery-ui.min",
    underscore: "../components/underscore/underscore-min",
    json2: "../components/json2/json2",
    localStorage: "../components/backbone.localStorage/backbone.localStorage-min",
    marionette: "../components/marionette/lib/core/amd/backbone.marionette.min",
    spin: "../components/spin.js/dist/spin.min/",
    tpl: "../components/requirejs-tpl/tlp/",
    handlebars: "../components/handlebars/handlebars",

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
 
