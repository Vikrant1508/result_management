class Teacher < ApplicationRecord
	validates :name, presence: :true,
				length: { minimum: 5 }
	validates :group,:subject,:marks,:date_of_birth, presence: :true
end
