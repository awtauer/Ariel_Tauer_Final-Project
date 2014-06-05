class CreateSiblingApplications < ActiveRecord::Migration
  def change
    create_table :sibling_applications do |t|
      t.string :school_of_attendance
      t.string :ineligible_student
      t.integer :ineligible_cps_id
      t.string :eligible_student
      t.integer :eligible_cps_id
      t.string :relationship
      t.string :home_address

      t.timestamps

    end
  end
end
