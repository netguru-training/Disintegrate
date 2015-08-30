class Advertisement < ActiveRecord::Base

  mount_uploader :photo, PhotoUploader

  has_many :applications
  has_many :comments
  belongs_to :user

  geocoded_by :address, :latitude  => :map_lat, :longitude => :map_long
  after_validation :geocode
end
