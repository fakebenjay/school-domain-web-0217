require 'pry'

class School
  attr_reader :roster, :add_student, :sort

  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @grade = grade
    if !@roster.keys.include? (@grade)
      @student_names = Array.new
      @student_names << student_name
      @roster[@grade] = @student_names
    else
      @roster[@grade] << student_name
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each do |grade, array|
      array.sort!
    end
  end
end
