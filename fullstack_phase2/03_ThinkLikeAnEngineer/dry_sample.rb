def judge(person1, person2)
  if person1 > 30
    return '◯◯'
  elsif person2 < 30
    return 'XX'
  end
end

ryuji = 31
hiroomi = 29
puts judge(ryuji, hiroomi)

taro = 32
ziro = 35
puts judge(taro, ziro)

ichiro = 29
niro = 25
puts judge(ichiro, niro)
