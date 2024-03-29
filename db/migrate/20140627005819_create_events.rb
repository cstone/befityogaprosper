class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :venue
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :url
      t.datetime :time
      t.references :event_category

      t.timestamps
    end
    add_index :events, :event_category_id
  end
end
