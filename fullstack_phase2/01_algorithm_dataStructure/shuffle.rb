file = File.open('shuffle.txt', "w")

numbers = (1..100).to_a.shuffle.take(100)
p numbers

file.print(numbers)
