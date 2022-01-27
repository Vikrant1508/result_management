class Teacher < ApplicationRecord
validates :student_name, presence: true,
                    length: { minimum: 5 }
end
