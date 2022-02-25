class User < ActiveRecord::Base
	enum role: { teacher: 'teacher', student: 'student'}
	# enum role: { admin: 0, superadmin: 1 }
	# has_many :students
	# has_one :teacher
	validates :email, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end