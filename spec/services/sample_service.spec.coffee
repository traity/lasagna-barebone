{factory, create, dummy, expect} = require('../test')

describe 'sample service', ->
  describe 'sample action', ->
    it 'echoes', ->
      expect(
        factory.sampleService.sampleAction(echo: 'test')
      ).to.eql { result: 'test' }
