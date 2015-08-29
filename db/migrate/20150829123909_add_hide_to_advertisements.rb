class AddHideToAdvertisements < ActiveRecord::Migration
  def change
    add_column :advertisements, :hide, :integer, default: true
  end
end
