class RenameAdminToUser < ActiveRecord::Migration
  def change
  	rename_column :park_program_applications, :admin_id, :user_id
  	rename_column :safety_hazard_applications, :admin_id, :user_id
  	rename_column :special_education_applications, :admin_id, :user_id
  end
end
