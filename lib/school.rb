require 'pry'

class School
  #tests need to have access to roster variable
  attr_reader :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if roster.key?(student_grade)
      #adds value to existing key
      roster[student_grade] << student_name
    else
      #creates new key and adds value
      roster[student_grade] = [student_name]
    end
  end

  def grade(grade_level)
    roster[grade_level]
  end

  def sort
    roster.each do |grade, student|
      student.sort!
    end
  end
end

=begin
school = School.new("Bayside High School")
school.add_student("AC Slater", 10)
school.add_student("Screech", 9)
binding.pry
=end
