{Action} = require('lasagna')

module.exports = class SampleAction extends Action
  constructor: ({samples}) ->
    @_samples = samples

  run: ({echo}) ->
    { result: echo }
