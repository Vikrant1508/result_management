class User < ActiveRecord::Base
	def teachers?
		role.name == "teachers"
	end
	def students?
		role.name == "students"
	end
	has_many :students
	has_one :teacher
	validates :email, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end