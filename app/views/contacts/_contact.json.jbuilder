json.extract! contact, :id, :name, :email, :phone, :message, :accepted, :newsletter, :slug, :created_at, :updated_at
json.url contact_url(contact, format: :json)
