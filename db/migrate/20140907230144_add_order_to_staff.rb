class AddOrderToStaff < ActiveRecord::Migration
  def change
    add_column :staffs, :order, :integer
  end
end
