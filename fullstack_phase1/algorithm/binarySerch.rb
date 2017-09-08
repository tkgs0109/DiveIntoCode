# 二分探索のデモコード

list = (1..100).to_a
target_number = 42

low_number = 0
high_number = list.length
n = 0

while low_number != high_number do
  n += 1
  puts("#{n}回目の探索です")
  center_number = ((low_number + high_number) / 2).floor
  if list[center_number] < target_number
    low_number = center_number + 1
  elsif target_number < list[center_number]
    high_number = center_number - 1
  else
    puts("targetを見つけました")
    break
  end
end