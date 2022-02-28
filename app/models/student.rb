class Student < ApplicationRecord
	belongs_to :user
	# validates :name, presence: true,
                    # length: { minimum: 5 }
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
end