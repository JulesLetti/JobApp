class StudentProfile < ApplicationRecord
  belongs_to :user

  mount_uploader :cv, StudentProfileCvUploader
  mount_uploader :photo, CompanyProfileLogoUploader

  def student_name
    first_name + ' ' + last_name
  end

  def student_location
    [city, country].join(', ')
  end

end
