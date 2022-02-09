class User < ActiveRecord::Base
	enum role: { teachers: 1, students: 2}
	has_many :students
	has_one :teacher
	validates :email, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end