class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.string :map_lat
      t.string :map_long
      t.integer :price

      t.timestamps null: false
    end
  end
end
