def weather
  puts "晴れ"
  puts "曇り"
  puts "雨"
end

def introduce(name, age)
  puts ("私は#{name}です。年齢は#{age}歳です。")
end

def add(n, y)
  if n+y < 50
    return "50より小さい"
  end
  return "50より大きい"
end

weather
introduce("Tsukagoshi", 26)

puts add(30, 30)
puts add(20, 20)