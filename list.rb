def shift(r, s)
  [r[0] - s, r[1] / 2 ** s, r[2] / 2 ** s]
end

while gets
  # 15
  r = $_.strip.split('.')[0].split('/').map{|v| v.to_i}
  # 8
  print "#{shift(r, 7).join(',')}\n"
  # 11
  print "#{shift(r, 4).join(',')}\n"
  # 14
  print "#{shift(r, 1).join(',')}\n"
  # 17
  4.times {|i|
    4.times {|j|
      z = r[0] + 2
      x = r[1] * 4 + i
      y = r[2] * 4 + j
      print "#{z},#{x},#{y}\n"
    }
  }
end
