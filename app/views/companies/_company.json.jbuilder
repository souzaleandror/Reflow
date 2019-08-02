json.extract! company, :id, :name, :variable_name, :description, :inactive, :slug, :created_at, :updated_at
json.url company_url(company, format: :json)
