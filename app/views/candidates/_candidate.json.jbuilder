json.extract! candidate, :id, :fullname, :email, :cellphone, :date_birth, :gender, :job_id, :file, :linkedin, :portfolio, :short_description, :accepted, :available_change_city, :license_car, :type_license_car, :have_car, :city, :state, :country, :slug, :good_profile, :observation, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
