should = require('should')
Person = require(__dirname + '/../src/person')

describe "Person", ->
  it "should be able to day hello", ->
    Person = global.theApp.Person()
    personInstance = new Person()
    message = personInstance.sayHelloTo('adomokos')

    message.should.equal "Hello!, adomokosi!"

  it "can say good night", ->
    Person = global.theApp.Person()
    personInstance = new Person()
    message = personInstance.sayGoodNight()
    message.should.equal "Good night!"

  
  
