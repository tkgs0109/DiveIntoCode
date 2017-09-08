tenkies = ["晴れ", "曇り", "雨"]

tenkies.each do |tenki|
  puts tenki
end

{ title: "こんにちは", content: "寒いですね" }.each do |key, value|
  puts "#{key} #{value}"
end