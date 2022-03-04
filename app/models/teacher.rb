class Teacher < ApplicationRecord
	belongs_to :user
  has_many :results
	validates :name,:last_name, presence: :true,
				                      length: { minimum: 3 }
	validates :subject, presence: :true
	validates :date_of_birth, presence: :true
end
