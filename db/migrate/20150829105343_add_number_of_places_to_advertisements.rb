class AddNumberOfPlacesToAdvertisements < ActiveRecord::Migration
  def change
    add_column :advertisements, :number_of_places, :integer
  end
end
