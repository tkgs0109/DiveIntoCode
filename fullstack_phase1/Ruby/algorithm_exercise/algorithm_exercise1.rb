def greatest_common_divisor(a, b)
  # ユークリッドの互除法によりG.C.Dを求める
  # 2数のうち、大きいほうをa_1,小さいほうをb_1とする
  if a == b
    return a
  elsif a > b
    a_1 = a
    b_1 = b
  else
    a_1 = b
    b_1 = a
  end
  
  while true
  # 互除法本体
    r = a_1 % b_1
    if r == 0
      return b_1
      break;
    end
    a_1 = b_1
    b_1 = r
  end
end

puts "###最大公約数算出アルゴリズム###"
puts "a,bを入力してください。"
print "a="
a = gets.to_i
print "b="
b = gets.to_i

g_c_d = greatest_common_divisor(a, b)

puts "#{a}と#{b}の最大公約数は、#{g_c_d}です。"