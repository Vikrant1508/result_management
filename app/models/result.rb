class Result < ApplicationRecord
	# belongs_to :teacher
	# belongs_to :student
	has_many :subjects, dependent: :destroy
	validates :name, presence: true,
                   length: { minimum: 3 }
	validates :last_name, presence: true
	validates :date_of_birth, presence: true
	validates :group, presence: true
end
