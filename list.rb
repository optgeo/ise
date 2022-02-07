def shift(r, s)
  [r[0] - s, r[1] / 2 ** s, r[2] / 2 ** s]
end

while gets
  # 15
  r = $_.strip.split('.')[0].split('/').map{|v| v.to_i}
  # 5 - 15
  0.upto(10) {|s|
    print "#{shift(r, s).join(',')}\n"
  }
  # 16
  2.times {|i|
    2.times {|j|
      z = r[0] + 1
      x = r[1] * 2 + i
      y = r[2] * 2 + j
      print "#{z},#{x},#{y}\n"
    }
  }
end
