def fizzbuzz(num)
  if num == 0
    return "0はわれないよ"
  elsif num % 15 == 0
    return "FizzBuzz!!"
  elsif num % 3 == 0
    return "Fizz!!"
  elsif num % 5 == 0
    return "Buzz!!"
  else
    return num
  end
end

while true
  print "num="
  num = gets.to_i
  puts fizzbuzz(num)
  break if num == 0
  # null値でbreakしたい人生だった
end
