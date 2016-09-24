class JobApplication < ApplicationRecord
  belongs_to :job_listing
  belongs_to :user
end
