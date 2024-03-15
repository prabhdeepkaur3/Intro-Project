class Teacher < ApplicationRecord
    # Associations
    has_many :courses., dependent: :destroy
  
    # Validations
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  end
  