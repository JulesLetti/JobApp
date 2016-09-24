class CreateJobApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :job_applications do |t|
      t.references :job_listing, foreign_key: true
      t.references :user, foreign_key: true
      t.string :status
      t.text :cover_letter
      t.date :available

      t.timestamps
    end
  end
end
