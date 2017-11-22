class Evaluation < ApplicationRecord
  belongs_to :student
  validates :date, presence: true
  validate :unique_date, :on => :create
  validate :date_in_batch, :on => :create,
    unless: Proc.new { |a| a.date.blank? }


  def unique_date
    student = self.student
    evaluations = student.evaluations

    if evaluations.any? {|e| e.date == self.date }
      errors.add(:date, "can't be used")
    end
  end

  def date_in_batch
    batch = self.student.batch
    if self.date < batch.start_date || self.date > batch.end_date
      errors.add(:date, "date needs to be within Batch-dates")
    end
  end

end
