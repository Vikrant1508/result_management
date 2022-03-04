class Student < ApplicationRecord
  belongs_to :user
  has_many :subjects
  validates :name, presence: true,
                   length: { minimum: 3 }
	validates :last_name, presence: true
	validates :date_of_birth, presence: true
	validates :contact_no, presence: true
end
