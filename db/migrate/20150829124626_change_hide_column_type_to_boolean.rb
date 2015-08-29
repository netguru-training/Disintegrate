class ChangeHideColumnTypeToBoolean < ActiveRecord::Migration
  def change
    remove_column :advertisements, :hide, :integer
    add_column :advertisements, :hide, :boolean, :default => true
    add_index :advertisements, :hide
  end
end
