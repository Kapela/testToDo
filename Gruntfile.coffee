module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    jade: 
      compile:
        options:
          pretty: true
        files:
          'public/index.html' : 'assets/jade/index.jade'

    coffee:
      compile:
        files:
          'public/javascripts/test.js' : 'assets/coffeescripts/test.coffee',
          'public/javascripts/require_main.js' : 'assets/coffeescripts/require_main.coffee'

    compass:
      dev:
        options:
          sassDir: "assets/stylesheets"
          cssDir: "public/stylesheets"

    watch:
      coffee:
        files: ["assets/coffeescripts/*.coffee"]
        tasks: ["coffee"]

      jade:
        files: ["assets/jade/*.jade"]
        tasks: ["jade"]

      compass:
        files: ["assets/stylesheets/*.(scss,sass)"]
        tasks: ["compass:dev"]


    compass:
      dev:
        options:
          sassDir: 'assets/stylesheets/'
          cssDir: 'public/stylesheets/'

  grunt.loadNpmTasks "grunt-contrib-compass"
  grunt.loadNpmTasks "grunt-contrib-jade"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-requirejs"
  grunt.loadNpmTasks "grunt-contrib-handlebars"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.registerTask "test", ["jshint", "qunit"]
  # grunt.r
