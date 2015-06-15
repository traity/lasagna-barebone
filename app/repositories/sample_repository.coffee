{MongoRepository} = require('lasagna')
Sample = require('../models/sample')

module.exports = class SampleRepository extends MongoRepository
  @model Sample
  @timestamps true

  findOneByValue: (value) ->
    @_findOneBy(value: value)
