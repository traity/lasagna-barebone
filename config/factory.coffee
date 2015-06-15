Promise = require('bluebird')
{App} = require('lasagna')
mongo = require('promised-mongo')
SampleRepository = require('../app/repositories/sample_repository')
SampleHelper     = require('../app/helpers/sample_helper')
SampleService    = require('../app/services/sample_service')

module.exports = class Factory
  constructor: (vars, api=[]) ->
    @_vars = vars
    @_api  = api

  init: ->
    @_db = mongo(@_vars.mongoUrl)
    @_objects()
    new Promise((r)->r())

  finalize: ->
    @_db.close()

  _objects: ->
    @samples       = new SampleRepository(@_db.collection('users'))
    @sampleHelper  = new SampleHelper(@_vars.s3Key, @_vars.s3AccessKey, @_vars.s3Bucket)
    @sampleService = new SampleService(@)
    @app           = new App(@_vars.port, @_api, @)
