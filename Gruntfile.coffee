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
          'public/javascripts/test/test.js' : 'assets/coffeescripts/test/test.coffee',
          'public/javascripts/test/person_spec.js' : 'assets/coffeescripts/test/person_spec.coffee'
          'public/javascripts/require_main.js' : 'assets/coffeescripts/require_main.coffee'

    compass:
      dev:
        options:
          sassDir: "assets/stylesheets"
          cssDir: "public/stylesheets"

    jslint:
      src: [""],
      exclude: [""],
      options:
        junit: "out/client-junit.xml", #
        log: "out/client-lint.log",
        jslintXml: "out/client/jslint.xml",
        errorsOnly: true,
        failOnError: true,
        checkstyle: "out/client-checkstyle.xml"

    
    mocha_phantomjs:
      all: ["test/**/*.html"],

    requirejs:
      compile:
        options:
          baseUrl: "path/to/base"
          ### All modules are located relative to this path.
          #
          ###
          
          mainConfigFile: "path/to/config.js"
          # 
          # 
          
          out: "path/to/optimized.js"

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

      mocha_phantomjs:
        files: ["test/**/*.html"]
        tasks: ["mocha_phantomjs"]


  grunt.loadNpmTasks "grunt-contrib-compass"
  grunt.loadNpmTasks "grunt-contrib-jade"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-requirejs"
  grunt.loadNpmTasks "grunt-contrib-handlebars"
  grunt.loadNpmTasks "grunt-mocha-phantomjs"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.registerTask "test", ["jshint", "qunit"]
  # grunt.r
  #
