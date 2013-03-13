w = window.open null, null, 'height=600,width=960'
url = window.location
params = url.toString().split(/[\?|&]/).slice(1)
if params.length
  w.document.write "<h2>Query String Params</h2>"
  for param in params
    [key, value] = param.split '='
    w.document.write "<div><strong>#{decodeURIComponent key}</strong>: #{decodeURIComponent value}</div>"

w.document.write("<h2>Decoded URI</h2>")
w.document.write(decodeURI(window.location))
