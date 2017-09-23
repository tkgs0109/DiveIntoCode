def isPrime( x )
  if x == 2
    return true
  end
  if x < 2
    return false #2よりも小さい値の場合は素数ではない
  end
  for i in 2..(x-1)
    if x % i == 0
      return false #2から(対象の数-1)までの数で割り切れる場合は素数ではない
    end
    return true #上記の条件に当てはまらない場合は素数である
  end
end

print("x=")
x = gets.to_i

p isPrime(x)
