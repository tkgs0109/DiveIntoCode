dic_members = {ceo: "noro", ai_teacher: "nakao", rails_teacher:"miyashita"}
puts dic_members
puts dic_members[:ceo]
p dic_members[:ceo]

players_count = {baseball: 9,soccer: 11,basketball: 5}
puts players_count[:soccer]

dic_member = {position:{ceo: "noro", ai_teacher: "nakao", rails_teacher:"miyashita"}}
p dic_member[:position]
p dic_member[:position][:ceo]

blog = [{title:"今日は暑いな",content:"でも頑張るぞ"},{title:"今日の仕事が終われば",content:"明日から旅行だ"},{title:"明日から",content:"プログラミングするぞ"}]
for in 0..blog.length - 1 do
  p blog[i][:title]
end

test = [{subject:"math",points:70},{subject:"english",points:50},{subject:"society",points:80}]
p test
test << {subject:"science",points:100}
p test
puts test[3][:points]