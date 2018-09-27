class School
  attr_reader :school_grades
  attr_reader :grades

  def initialize
    @school_grades = {}
    @grades = []
  end

  def add(student_name, grade)
    if school_grades[grade] # != nil
      school_grades[grade] << student_name
    else # if student[grade] == nil
      school_grades[grade] = [student_name]
    end
    grades << grade
    return true
  end

  def students(grade)
    if school_grades[grade]
      return school_grades[grade].sort
    else
      return []
    end
  end

  def students_by_grade
    students = []
    grades.uniq.sort.each do |grade|
      students << { grade: grade, students: students(grade) }
    end
    return students
  end
end