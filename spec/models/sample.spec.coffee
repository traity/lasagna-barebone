{AttributeError} = require('lasagna')
{dummy, build, expect} = require('../test')

describe 'sample', ->
  describe 'attributes assignment', ->
    it 'assigns id', ->
      expect(build.sample().id).to.equal dummy.sample.id

    it 'assigns value', ->
      expect(build.sample().value).to.equal dummy.sample.value

  describe 'attributes validation', ->
    it 'is not valid without value', ->
      expect(-> build.sample(value: null)).to.throwError (e) ->
        expect(e).to.be.an(AttributeError)
