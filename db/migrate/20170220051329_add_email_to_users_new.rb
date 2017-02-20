class AddEmailToUsersNew < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :center_name, :string
    add_column :users, :course_name, :string
    add_column :users, :student_name, :string
    add_column :users, :dob, :string
    add_column :users, :qualification, :string
    add_column :users, :state_name, :string
    add_column :users, :address, :string
    add_column :users, :mobile_number, :string
    add_column :users, :center_code, :string
    add_column :users, :center_place, :string
    add_column :users, :admission_date, :string
    add_column :users, :gender, :string
    add_column :users, :nationality, :string
    add_column :users, :district_name, :string
    add_column :users, :pincode, :string
  end
end
