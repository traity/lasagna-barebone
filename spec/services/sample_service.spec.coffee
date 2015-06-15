{factory, create, dummy, expect} = require('../test')

describe 'sample service', ->
  describe 'sample method', ->
    it 'echoes', ->
      expect(
        factory.sampleService.sampleMethod(echo: 'test')
      ).to.eql { result: 'test' }
