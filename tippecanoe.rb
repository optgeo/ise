require 'json'
require './constants'

Z = ENV['Z'].to_i

def tippecanoe(layer)
  case Z
  when 8
    case layer
    when 'm50100-150'
      { layer: layer, minzoom: 5, maxzoom: 8 }
    when 'm50100-140'
      { layer: layer, minzoom: 7, maxzoom: 8 }
    when 'm50100-344'
      { layer: layer, minzoom: 5, maxzoom: 8 }
    when 'm50100-351'
      { layer: layer, minzoom: 5, maxzoom: 8 }
    when 'm50100-352'
      { layer: layer, minzoom: 5, maxzoom: 8 }
    when 'm50100-321'
      { layer: layer, minzoom: 7, maxzoom: 8 }
    when 'm50100-322'
      { layer: layer, minzoom: 7, maxzoom: 8 }
    when 'm50100-346'
      { layer: layer, minzoom: 7, maxzoom: 8 }
    when 'm50100-343'
      { layer: layer, minzoom: 7, maxzoom: 8 }
    when 'm50100-333'
      { layer: layer, minzoom: 7, maxzoom: 8 }
    when 'm50100-345'
      { layer: layer, minzoom: 7, maxzoom: 8 }
    when 'm51301'
      { layer: layer, minzoom: 5, maxzoom: 8 }
    when 'm56376'
      { layer: layer, minzoom: 7, maxzoom: 8 }
    else
      false
    end
  when 11
    case layer
    when "m100-140"
      { layer: layer, minzoom: 9, maxzoom: 11 }
    when "m100-212"
      { layer: layer, minzoom: 10, maxzoom: 11 }
    when "m100-314"
      { layer: layer, minzoom: 10, maxzoom: 11 }
    when "m100-315"
      { layer: layer, minzoom: 10, maxzoom: 11 }
    when "m100-316"
      { layer: layer, minzoom: 10, maxzoom: 11 }
    when "m100-333"
      { layer: layer, minzoom: 9, maxzoom: 11 }
    when "m100-334"
      { layer: layer, minzoom: 9, maxzoom: 11 }
    when "m100-346"
      { layer: layer, minzoom: 9, maxzoom: 11 }
    when "m1401"
      { layer: layer, minzoom: 9, maxzoom: 11 }
    when "m1402"
      { layer: layer, minzoom: 10, maxzoom: 11 }
    when "m1403"
      { layer: layer, minzoom: 10, maxzoom: 11 }
    when "m6376"
      { layer: layer, minzoom: 9, maxzoom: 11 }
    else
      false
    end
  when 14
    case layer
    when "m100-344"
      { layer: layer, minzoom: 9, maxzoom: 14 }
    when "m2903"
      { layer: layer, minzoom: 12, maxzoom: 14 }
    when "m2904"
      { layer: layer, minzoom: 9, maxzoom: 14 }
    else
      false
    end
  when 17
    case layer
    when "m100-110"
      { layer: layer, minzoom: 9, maxzoom: 17 }
    when "m100-120"
      { layer: layer, minzoom: 14, maxzoom: 17 }
    when "m100-210"
      { layer: layer, minzoom: 14, maxzoom: 17 }
    when "m100-220"
      { layer: layer, minzoom: 14, maxzoom: 17 }
    when "m100-311"
      { layer: layer, minzoom: 10, maxzoom: 17 }
    when "m100-312"
      { layer: layer, minzoom: 12, maxzoom: 17 }
    when "m100-313"
      { layer: layer, minzoom: 15, maxzoom: 17 }
    when "m100-321"
      { layer: layer, minzoom: 9, maxzoom: 17 }
    when "m100-322"
      { layer: layer, minzoom: 9, maxzoom: 17 }
    when "m100-323"
      { layer: layer, minzoom: 12, maxzoom: 17 }
    when "m100-331"
      { layer: layer, minzoom: 10, maxzoom: 17 }
    when "m100-332"
      { layer: layer, minzoom: 10, maxzoom: 17 }
    when "m100-343"
      { layer: layer, minzoom: 9, maxzoom: 17 }
    when "m100-345"
      { layer: layer, minzoom: 9, maxzoom: 17 }
    when "m100-347"
      { layer: layer, minzoom: 9, maxzoom: 17 }
    when "m100-351"
      { layer: layer, minzoom: 9, maxzoom: 17 }
    when "m100-352"
      { layer: layer, minzoom: 9, maxzoom: 17 }
    when "m100-353"
      { layer: layer, minzoom: 12, maxzoom: 17 }
    when "m100-411"
      { layer: layer, minzoom: 12, maxzoom: 17 }
    when "m100-412"
      { layer: layer, minzoom: 12, maxzoom: 17 }
    when "m100-421"
      { layer: layer, minzoom: 9, maxzoom: 17 }
    when "m100-431"
      { layer: layer, minzoom: 12, maxzoom: 17 }
    when "m100-441"
      { layer: layer, minzoom: 12, maxzoom: 17 }
    when "m100-531"
      { layer: layer, minzoom: 15, maxzoom: 17 }
    when "m100-612"
      { layer: layer, minzoom: 16, maxzoom: 17 }
    when "m100-631"
      { layer: layer, minzoom: 16, maxzoom: 17 }
    when "m100-651"
      { layer: layer, minzoom: 16, maxzoom: 17 }
    when "m100-681"
      { layer: layer, minzoom: 16, maxzoom: 17 }
    when "m2901"
      { layer: layer, minzoom: 10, maxzoom: 17 } 
    when "m2910"
      { layer: layer, minzoom: 14, maxzoom: 17 }
    when "m2930"
      { layer: layer, minzoom: 13, maxzoom: 17 }
    when "m3207"
      { layer: layer, minzoom: 12, maxzoom: 17 }
    when "m3208"
      { layer: layer, minzoom: 12, maxzoom: 17 }
    when "m3205"
      { layer: layer, minzoom: 12, maxzoom: 17 }
    when "m3206"
      { layer: layer, minzoom: 12, maxzoom: 17 }
    when "m3211"
      { layer: layer, minzoom: 15, maxzoom: 17 }
    when "m3216"
      { layer: layer, minzoom: 14, maxzoom: 17 }
    when "m3218"
      { layer: layer, minzoom: 14, maxzoom: 17 }
    when "m3231"
      { layer: layer, minzoom: 15, maxzoom: 17 }
    when "m3232"
      { layer: layer, minzoom: 15, maxzoom: 17 }
    when "m3243"
      { layer: layer, minzoom: 14, maxzoom: 17 }
    when "m6331"
      { layer: layer, minzoom: 14, maxzoom: 17 }
    else
      false
    end
  end
end

while gets
  f = JSON.parse($_)
  layer = "m#{f['properties']['ftCode']}"
  layer += "-#{f['properties']['annoCtg']}" if f['properties']['annoCtg']
  f['tippecanoe'] = tippecanoe(layer)
  print JSON.dump(f), "\n" if f['tippecanoe']
end
