class Batch < ApplicationRecord
  validates :name, presence: true
  has_many :students


  def set_random_student
    random = rand(100)
    students = self.students
    colorGroup = students.select do |student|
        if !student.evaluations[0]
          next
        elsif random <= 17
          student.evaluations[-1].score == 'green'
        elsif (random > 17) && (random <= 50)
          student.evaluations[-1].score == 'orange'
        elsif random > 50
          student.evaluations[-1].score == 'red'
        end
    end
    noEvaluationGroup = students.select do |student|
      !student.evaluations[0]
    end
    return (colorGroup + noEvaluationGroup).sample
  end

end
