class AddAddressToAdvertisements < ActiveRecord::Migration
  def change
    add_column :advertisements, :address, :string
  end
end
