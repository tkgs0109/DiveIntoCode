require 'pp'
starttime = Time.now
def quick_sort(sort_number)
  # if以下に合致するときreturn値を返して処理を終了する
  return sort_number if sort_number.size < 2
  target = sort_number.shift
  smallers = []
  biggers = []
  sort_number.each do |sort_numbers|
      if sort_numbers < target
          smallers << sort_numbers
      else
          biggers << sort_numbers
      end
  end
  return quick_sort(smallers) + [target] + quick_sort(biggers)
end

numbers = [36, 97, 80, 95, 87, 94, 85, 6, 15, 12, 14, 51, 4, 76, 17, 73, 43, 84, 92, 34, 33, 25, 83, 98, 52, 3, 53, 21, 55, 60, 41, 79, 35, 99, 26, 62, 81, 39, 28, 50, 47, 44, 29, 23, 67, 9, 49, 37, 74, 70, 8, 77, 1, 24, 69, 48, 32, 42, 88, 40, 31, 7, 61, 18, 19, 2, 71, 11, 22, 82, 54, 20, 10, 59, 86, 45, 46, 90, 16, 66, 57, 30, 64, 27, 75, 63, 91, 78, 89, 56, 58, 38, 72, 96, 5, 100, 65, 68, 13, 93]
pp numbers
pp quick_sort(numbers)

endtime = Time.now
interval = endtime - starttime
puts "#{interval}秒"
