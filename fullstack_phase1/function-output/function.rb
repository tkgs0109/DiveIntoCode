def greeting
  puts "おはようございます"
  puts "こんにちは"
  puts "こんばんは"
end

def play(sports)
  puts "私は今日#{sports}をします。"
end

greeting
play("野球")
play("サッカー")
play("バスケ")

class House
end

5.times do
  p House.new
end