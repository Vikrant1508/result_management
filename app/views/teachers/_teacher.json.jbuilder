json.extract! teacher, :id, :student_name, :group, :subject, :grade, :date_of_birth, :marks, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
