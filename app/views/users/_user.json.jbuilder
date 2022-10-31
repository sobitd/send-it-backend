json.extract! user, :id, :first_name, :last_name, :phone_number, :username, :password_digest, :email_address, :isAdmin, :created_at, :updated_at
json.url user_url(user, format: :json)
