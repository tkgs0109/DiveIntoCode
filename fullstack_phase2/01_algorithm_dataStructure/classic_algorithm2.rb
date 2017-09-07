# Rubyアルゴリズム・データ構造3 小課題2
# 二分探索法実習アルゴリズム

# 以下に二分探索法を行う関数を定義してください
def binary_search(numbers,value)
  head = 0
  tail = numbers.length - 1

  for i in 0..tail
    if head > tail
      return "none"
      break
    end
    center = (head + tail) / 2
    if numbers[center] == value
      return center
      break
    elsif numbers[center] < value
      head = center + 1
    else
      tail = center - 1
    end
  end
end

numbers = [1,3,5,11,12,13,17,22,25,28]
p(numbers)

puts('探したい数字を入力してください')
target_number = gets.to_i

message = binary_search(numbers,target_number)

puts(message)
