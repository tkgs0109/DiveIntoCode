def sort_algo(sample_list)
  end_num = sample_list.length - 1
  newArry = []

  for i in 0..end_num do
    newArry[i] = sample_list[end_num - i]
    i += 1
  end
  
  sample_list = newArry
  return sample_list
end

sample_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p sort_algo(sample_list)