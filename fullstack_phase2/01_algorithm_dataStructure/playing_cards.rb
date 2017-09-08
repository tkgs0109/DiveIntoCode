# gem install rubycards
require 'rubycards'
include RubyCards

# Handインスタンスの生成
hand = Hand.new

# Deckインスタンスの生成
deck = Deck.new
puts "======before shuffle======"
puts deck

# デッキのシャッフル
deck = deck.shuffle!
puts "======after shuffle======"
puts deck

# デッキからカードを10枚引く
hand = hand.draw(deck,10)
puts "======after draw======"
puts hand

# handオブジェクトを配列に型変換
target = hand.to_a

# ソート実行部分
# 自作のバブルソートコードを流用しました
for i in 2..target.length do
  for j in 0..target.length - i do
    # 左のほうが右より大きいとき、左右交換
    if target[j] > target [j+1]
      w = target[j]
      target[j] = target[j+1]
      target[j+1] = w
    end
    j += 1
  end
  i += 1
end

# 並び替えた配列でHandオブジェクトのインスタンスを作成
hand = Hand.new(target)
puts "======after sort======"
puts hand
