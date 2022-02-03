class User < ActiveRecord::Base
	has_many :students
	has_one :teacher
	validates :email, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end