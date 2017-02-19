json.extract! a_user, :id, :email, :password, :password_confirmation, :created_at, :updated_at
json.url a_user_url(a_user, format: :json)