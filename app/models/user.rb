class User < ActiveRecord::Base
	enum role: { teachers: 0, students: 1}
	# enum role: { admin: 0, superadmin: 1 }
	has_many :students
	has_one :teacher
	validates :email, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end