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
          #'public/js/test/test.js' : 'assets/coffeescripts/test/test.coffee',
          #'public/js/test/person_spec.js' : 'assets/coffeescripts/test/person_spec.coffee'

          # Main Require js file
          'public/js/require_main.js' : 'assets/cs/require_main.coffee'


    compass:
      dev:
        options:
          sassDir: "assets/css"
          cssDir: "public/css"

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


  grunt.loadNpmTasks "grunt-contrib-compass"
  grunt.loadNpmTasks "grunt-contrib-jade"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-requirejs"
  grunt.loadNpmTasks "grunt-contrib-handlebars"
  grunt.loadNpmTasks "grunt-contrib-jasmine"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.registerTask "test", ["jshint", "qunit"]
  # grunt.r
  #
