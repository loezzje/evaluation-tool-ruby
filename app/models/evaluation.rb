class Evaluation < ApplicationRecord
  belongs_to :student
  validates :date, presence: true
  validate :unique_date, :on => :create


def unique_date
  student = self.student
  evaluations = student.evaluations

  if evaluations.any? {|e| e.date == self.date }
    errors.add(:date, "can't be used")
  end
end




end
