class Message < ActiveRecord::Base
  belongs_to :sender_id, :class_name => "User"
  belongs_to :receiver_id, :class_name => "User"
end
