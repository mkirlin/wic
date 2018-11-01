json.extract! user, :id, :first_name, :last_name, :email, :city, :about, :gender, :role, :training, :experience, :created_at, :updated_at
json.url user_url(user, format: :json)
