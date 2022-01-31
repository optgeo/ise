require 'rake'

r = $*[0].split(',').map{|v| v.to_i}

sh <<-EOS
curl --silent \
https://maps.gsi.go.jp/xyz/experimental_multil/#{r.join('/')}.geojson | \
tippecanoe-json-tool | Z=#{r[0]} ruby tippecanoe.rb
EOS
