def median(x, y, z)
  if x > y
    if x > z
      if z > y
        return z
      else
        return y
      end
    else
      return z
    end
  else
    if y > z
      if z > x
        return z
      else
        return x
      end
    else
      return y
    end
  end
end

puts "x=?"
x = gets.to_i

puts "y=?"
y = gets.to_i

puts "z=?"
z = gets.to_i

puts "x,y,zの中間値は#{median(x, y, z)}です。"