require 'pry'
# code here!
class School
attr_accessor :roster
attr_reader :name

  def initialize (input)
    @name = input
    @roster = {}
  end

  def add_student (name, grade)
    @roster[grade] = [] if !@roster.key?(grade)
    @roster[grade] << name
  end

  def grade (grade)
    @roster[grade]
  end

  def sort
  hash ={}
    @roster.each do |grade, array|
      hash[grade] = array.sort
    end
  hash
  end
end
