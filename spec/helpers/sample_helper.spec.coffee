{factory, dummy, expect} = require('../test')

describe 'sample helper', ->
  beforeEach ->
    @helper = factory.sampleHelper

  it 'adds two numbers', ->
    expect(factory.sampleHelper.sampleMethod(1,2)).to.eql 3