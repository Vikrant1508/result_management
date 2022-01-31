class Teacher < ApplicationRecord
	belongs_to :user
	validates :student_name, presence: true,
                    length: { minimum: 5 }
end
