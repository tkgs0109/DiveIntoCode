def nabeatsuTheWorld(num)
  str_num = num.to_s
  if num % 3 == 0
    return "hoge"
  elsif str_num.include?("3") == true
    return "hoge"
  else
    return num
  end
end

for i in 1..40
  puts nabeatsuTheWorld(i)
end