class Student

@@all = []
attr_accessor :name, :grade
attr_reader :id

  def initialize(name:, grade:, id:nil)
    @name = name

  end

end
