# 問題点1~3以外を入力したときも処理が進んでしまうよ

def rpsGame(num)
  cpu = rand(3) + 1 
  result = ( num - cpu + 3 ) % 3
  return cpu, result
end

  puts "じゃんけんプログラム"
  puts "数字を入力して下さい"
  
while true
  puts "1: グー"
  puts "2: チョキ"
  puts "3: パー"
  # 配列にしてeach.doで表示したらRubyっぽくていい
  
  num = gets.to_i
  cpu, result = rpsGame(num)
  
  case cpu
    when 1
      puts "相手はグーを出しました。"
    when 2
      puts "相手はチョキを出しました。"
    when 3
      puts "相手はパーを出しました。"
  end
  
  case result
    when 0
      puts "あいこです。もう一回。"
    when 1
      puts "あなたの負けです。"
      break
    when 2
      puts "あなたの勝ちです。"
      break
  end
end