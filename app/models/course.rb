class Course < ApplicationRecord
  # Associations
  belongs_to :teacher
  has_many :grades, dependent: :destroy

  # Validations
  validates :name, presence: true
  validates :teacher_id, presence: true
end
