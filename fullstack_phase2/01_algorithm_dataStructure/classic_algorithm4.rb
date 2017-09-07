starttime = Time.now
# Rubyアルゴリズム・データ構造4 小課題2
# バブルソート
def bubble_sort(numbers)
  for i in 2..numbers.length do
    # number.length - 1 => 配列の要素数
    # 今回は[j+1]を指定するので、j+1のEND値が配列の要素数になればよい。
    # よってjのEND値はnumber.length - 2から始まる。
    for j in 0..numbers.length - i do
      # 左のほうが右より大きいとき、左右交換
      if numbers[j] > numbers [j+1]
        w = numbers[j]
        numbers[j] = numbers[j+1]
        numbers[j+1] = w
      end
      j += 1
      p numbers
    end
    i += 1
  end
end

numbers = [36, 97, 80, 95, 87, 94, 85, 6, 15, 12, 14, 51, 4, 76, 17, 73, 43, 84, 92, 34, 33, 25, 83, 98, 52, 3, 53, 21, 55, 60, 41, 79, 35, 99, 26, 62, 81, 39, 28, 50, 47, 44, 29, 23, 67, 9, 49, 37, 74, 70, 8, 77, 1, 24, 69, 48, 32, 42, 88, 40, 31, 7, 61, 18, 19, 2, 71, 11, 22, 82, 54, 20, 10, 59, 86, 45, 46, 90, 16, 66, 57, 30, 64, 27, 75, 63, 91, 78, 89, 56, 58, 38, 72, 96, 5, 100, 65, 68, 13, 93]

bubble_sort(numbers)

endtime = Time.now
interval = endtime - starttime
puts "#{interval}秒"
