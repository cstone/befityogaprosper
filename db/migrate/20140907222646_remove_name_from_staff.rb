class RemoveNameFromStaff < ActiveRecord::Migration
  def up
    remove_column :staffs, :name
  end

  def down
    add_column :staffs, :name, :string
  end
end
