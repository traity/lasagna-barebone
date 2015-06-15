{Model} = require('lasagna')

module.exports = class Sample extends Model
  @attributes 'id', 'value', 'updatedAt', 'createdAt'

  constructor: (args) ->
    super(args)
    @_validateValue(@value)

  _validateValue: (value) ->
    @_attributeError('value') unless value?

