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
    DROP TABLE students
    SQL
    )
  end

  def save
    DB[:conn].execute(
    <<-SQL
    INSERT INTO students(name, grade) VALUES (?, ?), self.name, self.grade
    SQL
    )
    @id = DB[:conn].execute("SELECT last_inserted_rowid() FROM students")[0][0]
  end

  def create

  end

end
