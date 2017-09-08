# puts "Dive into Code"
# puts "私は受講生です"
# puts "30歳です"

# name = "山田太郎"
# age = 18
# puts name
# puts age

# puts "私は#{name}といいます。年齢は#{age}です。"

# season = ["春", "夏", "秋"]
# p season

# season.push("冬")
# p season

# house = [{price:"2000万",location: "東京都",size:"80坪"},
#         {price:"1500万",location:"千葉県",size:"50坪"},
#         {price:"800万",location:"埼玉県",size:"100坪"}]

# p house[1][:location]
# p house[0][:size]
# p house[2].fetch_values(:price, :size)

# 演習問題11

# puts "数字を入力してね"
# num = gets.to_i

# if num < 50 then
#   if num == 30 then
#     puts "30ジャストだよ"
#   else
#     puts "50未満だよ"
#   end
# elsif num > 50 then
#   puts "50より大きいよ"
# end


# 演習問題12

# puts "数字を入力してね"
# num = gets.to_i

# if num % 2 == 0 then
#   puts "numは偶数"
# else
#   puts "numは奇数"
# end

# 演習問題13

# i = 0

# while i < 10 do
#   puts "おはよう"
#   i += 1
# end

# 演習問題14

# for i in 1..10 do
#   puts "こんにちは"
# end

# 演習問題15

# 10.times do
#   puts "こんばんは"
# end

# 演習問題16

# arry = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# arry.each do |num|
#   puts num
# end

# 演習問題17

# def addition(x, y, z)
#   return (x + y + z)/3
# end

# puts addition(2, 3, 7)

# 演習問題18

# def division(x, y)
#   return x/y  
# end

# 演習問題20

# def doing(date, place, food)
#   return ("#{date}は#{place}で#{food}を食べる")
# end

# puts doing("今日", "渋谷", "カレー")
# puts doing("明日", "池袋", "オムライス")

