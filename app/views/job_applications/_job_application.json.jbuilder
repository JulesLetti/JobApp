json.extract! job_application, :id, :job_listing_id, :user_id, :status, :cover_letter, :available, :created_at, :updated_at
json.url job_application_url(job_application, format: :json)