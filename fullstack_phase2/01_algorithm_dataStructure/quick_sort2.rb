# クイックソート
def average(array)
 avg = array.reduce(&:+) / array.length
end

def average_sample(array, count)
 average(count.times.map{array.sample})
end

def select_pivot array, size
 if size < 326
   average(array)
 else
   average_sample(array, 16)
 end
end

def qsort array
 if array.length == 1
   return array
 elsif array.length == 2
   return array if array[0] < array[1]
   return [array[1],array[0]]
 end

 pivot = select_pivot(array, array.length)
 left = []
 right = []
 array.each{|num|
   if num < pivot
     left << num
   else
     right << num
   end
 }
 qsort(left) + qsort(right)
end

require 'pp'

array = 9999.times.map{ rand(10000)} # [0..100)の整数10個の配列を生成
p array
p (sorted_array = qsort(array))
puts "is_sorted: #{array.sort == sorted_array}"
