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

  def get_number_of_green_scores
    students = self.students
    greenScores = 0
    students.each do |student|
      student.evaluations.each do |evaluation|
        if evaluation.score == 'green'
          greenScores += 1
        end
      end
    end
    return greenScores
  end


  def get_number_of_orange_scores
    students = self.students
    orangeScores = 0
    students.each do |student|
      student.evaluations.each do |evaluation|
        if evaluation.score == 'orange'
          orangeScores += 1
        end
      end
    end
    return orangeScores
  end

  def get_number_of_red_scores
    students = self.students
    redScores = 0
    students.each do |student|
      student.evaluations.each do |evaluation|
        if evaluation.score == 'red'
          redScores += 1
        end
      end
    end
    return redScores
  end

  def get_number_of_no_scores
    students = self.students
    noScores = 0
    students.each do |student|
      if !student.evaluations[0]
        noScores += 1
      end
    end
    return noScores
  end

end
