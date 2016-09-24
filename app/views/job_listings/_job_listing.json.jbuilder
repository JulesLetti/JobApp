json.extract! job_listing, :id, :user_id, :company_profiles_id, :title, :job_description, :created_at, :updated_at
json.url job_listing_url(job_listing, format: :json)