vars    = require('../config/vars')
Factory = require('../config/factory')
dummy   = require('./dummy')

factory = new Factory(vars)

before -> factory.init()
after  -> factory.finalize()

module.exports         = require('./actions')(factory, dummy)
module.exports.expect  = require('expect.js')
module.exports.factory = factory
module.exports.dummy   = dummy
