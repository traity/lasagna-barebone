module.exports = class SampleService
  constructor: ({samples}) ->
    @_samples = samples

  sampleMethod: ({echo}) ->
    { result: echo }