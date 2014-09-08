class AddLastNameToStaff < ActiveRecord::Migration
  def change
    add_column :staffs, :first_name, :string
    add_column :staffs, :last_name, :string
    add_column :staffs, :title, :string
  end
end
