class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if roster.[grade]
      roster[grade] << name
    else
      roster[grade] = [name]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sorted_list
    sorted_hash = {}
    @roster.sort.each do |name, grade|
      sorted_hash[grade] = grade.sort
  end
    sorted_hash
  end
end