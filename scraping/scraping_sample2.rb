def get_link(text)
  href_number = text.index("href=")
  if href_number == nil
    return nil, 0
  end
  start_number = text.index('"', href_number)
  end_number = text.index('"', start_number + 1)

  url = text.slice(start_number+1..end_number-1)
  return url, end_number
end

text = '<a class="nav" href="/teachers">講師紹介</a><a class="nav" href="/students">生徒紹介</a><a class="nav" href="/investor">出資者紹介</a>'

while true
  url, end_position = get_link(text)
  # urlがnilの場合、そこで処理を終了させる
  if url == nil
    break
  else
    puts(url)
    text = text.slice(end_position..-1)
  end
end
