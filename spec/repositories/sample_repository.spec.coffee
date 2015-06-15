{sharedSpec} = require('lasagna')
{factory, create, build, dummy, expect} = require('../test')

describe 'sample repository', ->
  beforeEach ->
    @repository = factory.samples
    @repository.clear()

  sharedSpec.behavesLikeARepository(build.sample)

  sharedSpec.behavesLikeATimestampedRepository(build.sample)

  it 'finds a sample by value', ->
    create.sample().then (createdSample) =>
      @createdSample = createdSample
      @repository.findOneByValue(dummy.sample.value)
    .then (retrievedSample) =>
      expect(retrievedSample).to.eql @createdSample
