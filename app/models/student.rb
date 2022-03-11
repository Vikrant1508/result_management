class Student < ApplicationRecord
  # belongs_to :user
  has_many :relationship, dependent: :destroy
  has_many :teachers, through: :relationship,
                      foreign_key: "teacher_id"
  validates :name, presence: true,
                   length: { minimum: 3 }
	validates :last_name, presence: true
	validates :date_of_birth, presence: true
	validates :contact_no, presence: true, uniqueness: true,
                                         length: { is: 10}
end
