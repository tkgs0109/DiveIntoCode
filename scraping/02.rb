p text = '<a class="nav" href="/teachers">講師紹介</a></li>'

# 小課題1
# "href="の後の"を取得
href_number = text.index("href=")
puts ">start_number"
p start_number = text.index('"', href_number)


# 小課題2
puts ">end_number"
p end_number = text.index('"', start_number+1)

# 小課題3
puts ">slice..."
url = text.slice(start_number + 1 .. end_number - 1)
print(url)
