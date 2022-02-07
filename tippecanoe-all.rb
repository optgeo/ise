require 'json'
require './constants'

Z = ENV['Z'].to_i

def tippecanoe(layer)
  { layer: layer, minzoom: Z, maxzoom: Z }
end

while gets
  f = JSON.parse($_)
  layer = "m#{f['properties']['ftCode']}"
  layer += "-#{f['properties']['annoCtg']}" if f['properties']['annoCtg']
  f['tippecanoe'] = tippecanoe(layer)
  print JSON.dump(f), "\n" if f['tippecanoe']
end
