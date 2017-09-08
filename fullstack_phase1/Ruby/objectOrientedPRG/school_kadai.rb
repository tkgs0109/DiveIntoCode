require 'launchy'

class School
  attr_accessor :name,
                :address,
                :number_of_students,
                :founding_years,
                :introduction_video_url,
                :introduction_statement

  def initialize(name, address, number_of_students,founding_years,
                 introduction_video_url, introduction_statement)
    self.name = name
    self.address = address
    self.number_of_students = number_of_students
    self.founding_years = founding_years
    self.introduction_video_url = introduction_video_url
    self.introduction_statement = introduction_statement
  end
  def show_introduction_video
    puts("#{self.introduction_video_url}を開きます。")
    Launchy.open(self.introduction_video_url)
  end
end



a_school = School.new("A学校", "東京都新宿区..", 300, 100, "https://response.jp/", "A学校は自然豊かな...")
b_school = School.new("B学校", "東京都新宿区..", 500, 30, "http://www.carsensorlab.net/", "B学校は文武両立で...")

a_school.show_introduction_video
b_school.show_introduction_video
