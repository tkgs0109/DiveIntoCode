def word_length(word)
  wordArry = word.split("")
  wordLength = wordArry.length
  return wordLength
end

puts "###文字列の長さを求めるアルゴリズム###"
puts "文字列を入力してください"
word = gets.chomp
# .chompオプション=>最後の改行を消してくれる

puts "'#{word}'の文字列の長さは#{word_length(word)}です。"