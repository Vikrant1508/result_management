class User < ActiveRecord::Base
	enum role: { teacher: 'teacher', student: 'student'}
	has_many :students
	has_one :teacher
	validates :name, presence: true
	validates :email, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end