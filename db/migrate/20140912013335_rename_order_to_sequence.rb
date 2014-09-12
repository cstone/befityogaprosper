class RenameOrderToSequence < ActiveRecord::Migration
  def up
    rename_column :staffs, :order, :sequence
  end

  def down
    rename_column :staffs, :sequence, :order
  end
end
