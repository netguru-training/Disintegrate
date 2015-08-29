class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.boolean :accepted
      t.references :user
      t.references :advertisement

      t.timestamps null: false
    end
  end
end
