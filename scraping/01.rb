#indexオプション 文字列の検索
#.index("word", 検索開始位置)

p "This morning is sunny, but tomorrow is rainy".index("sunny")
p "This morning is sunny, but tomorrow is rainy".index("This")
p "This morning is sunny, but tomorrow is rainy".index("s")
p "This morning is sunny, but tomorrow is rainy".index("cloudy")
p "This morning is sunny, but tomorrow is rainy".index("but")

p "It is sunny this morning, but it will rain this afternoon".index("this")
p "It is sunny this morning, but it will rain this afternoon".index("this", 13)
p "It is sunny this morning, but it will rain this afternoon".index("this", 12)

p "It is sunny this morning, but it will rain this afternoon".index("it")
p "It is sunny this morning, but it will rain this afternoon".index("it", 1)
