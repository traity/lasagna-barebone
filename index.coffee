vars    = require('./config/vars')
api     = require('./config/api')
Factory = require('./config/factory')

factory = new Factory(vars, api)

factory.init()
.then -> factory.app.start()
.catch (err) -> console.log(err)
