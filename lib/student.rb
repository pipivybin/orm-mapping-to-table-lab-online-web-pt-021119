class Student

@@all = []
attr_accessor :name, :grade
attr_reader :id

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def self.create_table
    DB[:con].execute
  end

  def save
  end

  def create

  end

end
