class Grade < ApplicationRecord
  belongs_to :student
  belongs_to :course

  # Validations
  validates :grade, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :student_id, presence: true
  validates :course_id, presence: true
end
