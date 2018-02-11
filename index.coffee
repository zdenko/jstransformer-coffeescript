import coffee from "coffeescript"

exports.name = 'coffeescript'
exports.inputFormats = ['coffee', 'coffeescript']
exports.outputFormat = 'js'

exports.render = (src, options = {}, locals = {}) ->
  # Bring the locals into the compile options.
  options = {options..., locals...}
  coffee.compile src, options
