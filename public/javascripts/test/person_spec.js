(function() {
  var Person, should;

  should = require('should');

  Person = require(__dirname + '/../src/person');

  describe("Person", function() {
    it("should be able to day hello", function() {
      var message, personInstance;
      Person = global.theApp.Person();
      personInstance = new Person();
      message = personInstance.sayHelloTo('adomokos');
      return message.should.equal("Hello!, adomokosi!");
    });
    return it("can say good night", function() {
      var message, personInstance;
      Person = global.theApp.Person();
      personInstance = new Person();
      message = personInstance.sayGoodNight();
      return message.should.equal("Good night!");
    });
  });

}).call(this);
