class CreateEmploymentApplications < ActiveRecord::Migration
  def change
    create_table :employment_applications do |t|
      t.string :name
      t.string :email
      t.text :message
      t.string :office_location

      t.timestamps
    end
  end
end
