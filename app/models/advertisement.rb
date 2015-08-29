class Advertisement < ActiveRecord::Base

  has_many :applications
  belongs_to :user

  geocoded_by :address, :latitude  => :map_lat, :longitude => :map_long
  after_validation :geocode
end
