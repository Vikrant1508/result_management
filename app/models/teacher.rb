class Teacher < ApplicationRecord
	belongs_to :user
  has_many :results
  has_many :relationship, dependent: :destroy
  has_many :students, through: :relationship,
                      foreign_key: "student_id"

  validates :name,:last_name, presence: :true,
                              length: { minimum: 3 }
  validates :subject, presence: :true
  validates :date_of_birth, presence: :true
  validates :contact_no, presence: true,
             uniqueness: true,length: { is: 10 }
                    
end
