def repeat_string(str)
  if str.length >= 5
    str = str.slice(0,4)
  end
  return "#{str}#{str}#{str}"
end

puts repeat_string('Python')
puts repeat_string('Go')
puts repeat_string('C++')