json.extract! usuario, :id, :nombre, :username, :email, :tipo, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
