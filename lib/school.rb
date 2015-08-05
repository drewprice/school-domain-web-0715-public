class School
  attr_reader :roster

  def initialize(name)
    @name   = name
    @roster = {}
  end

  def add_student(student, level)
    if @roster[level]
      @roster[level] << student
    else
      @roster[level] = [student]
    end
  end

  def grade(level)
    @roster[level]
  end

  def sort
    @roster.each { |level, students| @roster[level] = students.sort }
  end
end
