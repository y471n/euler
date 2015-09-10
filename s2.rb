puts (1..Float::INFINITY)
.lazy.with_object([0,1])
.map{|x, last| last[1] = last[0] + (last[0] = last[1]) }
.select{ |x| x % 2 == 0 }
.take_while{ |x| x < 4_000_000  }
.reduce(:+)
