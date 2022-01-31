require './constants'

desc '1. download mokuroku from experimental_anno'
task :download_mokuroku do
  raise "you already have #{MOKUROKU_DST}." if File.exist?(MOKUROKU_DST)
  sh "curl -C - -o #{MOKUROKU_DST} #{MOKUROKU_SRC}"
end

desc '2. parse mokuroku'
task :parse_mokuroku do
  sh <<-EOS
gzcat #{MOKUROKU_DST} | grep ^15/ | ruby list.rb | sort -n | uniq | \
parallel --line-buffer ruby download.rb {} > #{GEOJSONS_PATH}
  EOS
end

desc '3. produce vector tiles'
task :produce_tiles do
  sh <<-EOS
tippecanoe -f -o #{MBTILES_PATH} \
--minimum-zoom=#{MINZOOM} \
--maximum-zoom=#{MAXZOOM} \
#{GEOJSONS_PATH}
  EOS
end

desc '4. run vt-optimizer'
task :optimize do
  sh <<-EOS
node ~/vt-optimizer/index.js -m #{MBTILES_PATH}
  EOS
end

