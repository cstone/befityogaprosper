class CreateEventCategories < ActiveRecord::Migration
  def change
    create_table :event_categories do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
