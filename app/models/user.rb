class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # belongs_to :admin_user       
	has_many :students
	has_many :teachers
  has_many :subjects
  # has_many :active_relationships, class_name:  "Relationship",
  #                                 foreign_key: "teacher_id",
                                  # dependent:   :destroy                               
	enum role: { teacher: 'teacher', student: 'student'}
	validates :name, presence: true
	validates :email, uniqueness: true 
end