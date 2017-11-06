class Student < ApplicationRecord
  belongs_to :batch
  has_many :evaluations, dependent: :destroy

end
