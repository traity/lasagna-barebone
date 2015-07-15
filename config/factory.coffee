{App}            = require('lasagna')
mongodb          = require('mongodb')
SampleRepository = require('../app/repositories/sample_repository')
SampleHelper     = require('../app/helpers/sample_helper')
SampleService    = require('../app/services/sample_service')

module.exports = class Factory
  constructor: (vars, api=[]) ->
    @_vars = vars
    @_api  = api

  init: ->
    mongodb.MongoClient.connect(@_vars.mongoUrl).then (db) =>
      @_db = db
      @_objects()

  finalize: ->
    @_db.close()

  _objects: ->
    @samples       = new SampleRepository(@_db.collection('users'))
    @sampleHelper  = new SampleHelper(@_vars.s3Key, @_vars.s3AccessKey, @_vars.s3Bucket)
    @sampleService = new SampleService(@)
    @app           = new App(@_vars.port, @_api, @)
