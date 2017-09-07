starttime = Time.now
# Rubyアルゴリズム・データ構造4 小課題1
# 選択ソート
# 以下に選択ソートを行う関数を定義してください
def selection_sort(numbers)
  i = 0
  while i < numbers.length
    indexMin = i
    k = i + 1
    while k < numbers.length
      if numbers[k] < numbers[indexMin]
        indexMin = k
        # numbers[i]とnumbers[indexMin]を入れ替えるために、一旦変数wに格納。
        w = numbers[i]
        numbers[i] = numbers[indexMin]
        numbers[indexMin] = w
      end
      k += 1
      p numbers
    end
    i += 1
  end
end

numbers = [36, 97, 80, 95, 87, 94, 85, 6, 15, 12, 14, 51, 4, 76, 17, 73, 43, 84, 92, 34, 33, 25, 83, 98, 52, 3, 53, 21, 55, 60, 41, 79, 35, 99, 26, 62, 81, 39, 28, 50, 47, 44, 29, 23, 67, 9, 49, 37, 74, 70, 8, 77, 1, 24, 69, 48, 32, 42, 88, 40, 31, 7, 61, 18, 19, 2, 71, 11, 22, 82, 54, 20, 10, 59, 86, 45, 46, 90, 16, 66, 57, 30, 64, 27, 75, 63, 91, 78, 89, 56, 58, 38, 72, 96, 5, 100, 65, 68, 13, 93]
selection_sort(numbers)

endtime = Time.now
interval = endtime - starttime
puts "#{interval}秒"
# アルゴリズムによる実行時間の差異を確認したかった
