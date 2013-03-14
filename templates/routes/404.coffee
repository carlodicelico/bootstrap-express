exports.notFoundErr (req, res) ->
  res.render '404', { error: '404: Not Found!' }