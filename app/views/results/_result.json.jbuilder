json.extract! result, :id, :name, :last_name, :group, :subject, :date_of_birth, :marks, :created_at, :updated_at
json.url result_url(result, format: :json)
