class Student

  attr_accessor :name, :grade
  attr_reader :id

def initialize(name, grade)
  @name = name
  @grade = grade
end

def self.create_table
  sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
        )
        SQL
  DB[:conn].execute(sql)
end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

def drop_table
  sql = <<-SQL
    DROP TABLE students
  SQL
DB[:conn].execute(sql)
end  



  

end
