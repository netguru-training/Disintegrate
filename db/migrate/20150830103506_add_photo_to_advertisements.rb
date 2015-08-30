class AddPhotoToAdvertisements < ActiveRecord::Migration
  def change
    add_column :advertisements, :photo, :string
  end
end
