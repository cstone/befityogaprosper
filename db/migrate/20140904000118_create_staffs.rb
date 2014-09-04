class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.text :bio
      t.string :photo
      t.boolean :active

      t.timestamps
    end
  end
end
