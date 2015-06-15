_      = require('underscore')
Sample = require('../app/models/sample')

module.exports = (factory, dummy) ->
  build =
    sample: (args={}) ->
      new Sample(_.defaults(args, dummy.sample))

  create =
    sample: (args={}) ->
      factory.samples.put(build.sample(args))

  { build: build, create: create }