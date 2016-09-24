class Skill < ApplicationRecord
  belongs_to :skill_category
  has_many :user_skills
  has_many :users, through: :user_skills
  has_many :job_listing_skills
  has_many :job_listings, through: :job_listing_skills
end
