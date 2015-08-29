class Advertisement < ActiveRecord::Base
  has_many :applications
  belongs_to :user
end
