require(['jquery', 'jasmine', 'jasmine-html'], ($, jasmine) ->
  jasmineEnv = jasmine.getEnv()
  jasmineEnv.updateInterval = 1000

  htmlReporter = new jasmine.HtmlReporter()
  jasmineEnv.addReporter(htmlReporter)
  jasmineEnv.specFilter = (spec) ->
    return htmlReporter.specFilter(spec)

  $ ->
    jasmine.getEnv().execute()
    )


