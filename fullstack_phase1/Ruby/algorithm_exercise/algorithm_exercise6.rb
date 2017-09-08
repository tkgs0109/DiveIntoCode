def swapCase(word)
  # 文字列を配列に梱包
  wordArry = word.split("")
  # 文字列を全て大文字にして配列に梱包
  wordUpcase = word.upcase
  upcaseArry = wordUpcase.split("")
  # 文字列を全て小文字にして配列に梱包
  wordDownCase = word.downcase
  downcaseArry = wordDownCase.split("")
  
  # 配列の最終インデックス
  num = word.length - 1
  for i in 0..num do
    if wordArry[i] == upcaseArry[i]
      upcaseArry[i] = downcaseArry[i]
    end
  end
  swappedStr = upcaseArry.join
  return swappedStr
end

puts "###大文字、小文字を入れ替えるアルゴリズム###"
puts "アルファベット文字列を入力してください"
word = gets.chomp

puts "#{swapCase(word)}"