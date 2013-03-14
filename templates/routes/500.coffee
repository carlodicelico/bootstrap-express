exports.serverErr (req, res) ->
  res.render '500', { error: '500: Internal Server Error!' }