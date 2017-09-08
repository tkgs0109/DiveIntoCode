# Rubyアルゴリズム・データ構造7 小課題
# 素数出力プログラム
# Mathクラスを使う
require 'complex'

def eratosthenes(number)
  # x=numberの平方数sqrtNumを求める。素因数の取りうる最大値がP
  # Pは、P<=x^1/2の整数なので丸め処理で問題なし
  sqrtNum = Math.sqrt(number).round
  numbers = (2..number).to_a # 2からnumberまでの配列を用意
  for i in 2..sqrtNum do
    delArry = []
    # number / i(因数)で、約数の個数divisorを求める。
    # i * 1~divisorの結果を配列に格納
    divisor = number / i
    divisorArry =(1..divisor).to_a
    # 素因数候補iにdivisorArryをかける=>それがnumberの因数に
    # このときi自身は因数配列delArryに含めない。
    for j in 1..(divisorArry.length - 1) do
      delArry << divisorArry[j] * i
    end
    numbers -= delArry
  end
  return numbers
end

puts "xまでの素数を求めます。"
print "x="
x = gets.to_i

p eratosthenes(x)
