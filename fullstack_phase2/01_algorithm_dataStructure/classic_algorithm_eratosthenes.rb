# Rubyアルゴリズム・データ構造7 小課題
# 素数出力プログラム
# Mathクラスを使う
require 'complex'

def eratosthenes(number)
  # Pは、P<=x^1/2の整数なので丸め処理で問題なし
  sqrtNum = Math.sqrt(number).round
  numbers = (2..number).to_a # 2からnumberまでの配列を用意
  primes = [] #素数を入れる配列を用意
  for i in 2..sqrtNum do
    # number / i(因数)で、約数の個数divisorを求める。
    # i * 1~divisorの結果を配列に格納
    divisor = number / i
    divisorArry =(1..divisor).to_a
    divisorArry.each do |j|
      divisorArry[j] = divisorArry[j]
    end
    for j in 0..(numbers.string - 1) do

      multipleArry =

    end
  end
end

puts "xまでの素数を求めます。"
print "x="
x = gets.to_i

p eratosthenes(x)
