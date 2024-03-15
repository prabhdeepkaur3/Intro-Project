class Student < ApplicationRecord
    # Associations
    has_many :.grades
    has_many :courses, through: :grades
  
    # Validations
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  
  end
  