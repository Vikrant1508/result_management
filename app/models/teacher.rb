class Teacher < ApplicationRecord
	belongs_to :user
	validates :name,:last_name, presence: :true,
				length: { minimum: 3 }
	validates :group, presence: :true
	validates :subject, presence: :true
	validates :date_of_birth, presence: :true
	validates :marks, presence: :true
end
