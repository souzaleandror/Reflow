json.extract! job, :id, :name_job, :department_id, :company_id, :type_contraction_id, :role, :description, :mean_activity, :requirement, :desirable, :email_send_cv, :salary, :benefits, :english, :spanish, :quantity_vacancy, :end_date, :job_filled, :slug, :img1, :inactive, :created_at, :updated_at
json.url job_url(job, format: :json)
