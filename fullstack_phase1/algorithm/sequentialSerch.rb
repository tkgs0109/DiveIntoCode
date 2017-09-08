# 線形探索のデモコード

list = 1..100
target_number = 42

for n in list do
  puts("#{n}回目の探索です")
  if n == target_number
    puts("targetを見つけました")
    break
  end
end