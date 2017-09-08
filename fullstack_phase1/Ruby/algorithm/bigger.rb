def bigger(a, b)
  if a > b
    return a
  else
    return b
  end
end

puts "a=?"
a = gets.to_i

puts "b=?"
b = gets.to_i

puts(bigger(a, b))