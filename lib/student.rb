class Student

@@all = []
attr_accessor :name, :grade
attr_reader :id

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def self.create_table
    DB[:conn].execute(
    <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
    )
    SQL
    )
  end

  def self.drop_table
    DB[:conn].execute(
    <<-SQL
    
    SQL
    )
  end

  def save
  end

  def create

  end

end
