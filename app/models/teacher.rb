class Teacher < ApplicationRecord
	belongs_to :user
	validates :name,:last_name, presence: :true,
				length: { minimum: 3 }
	validates :group,:subject,:marks,:date_of_birth, presence: :true
end
