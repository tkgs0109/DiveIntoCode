puts "年齢を入力してね"
age = gets.to_i

if age < 10
  puts "まだまだあなたは子供です"
elsif age < 20
  puts "あなたは未成年です"
else
  puts "あなたは成人です"
end