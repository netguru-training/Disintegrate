class Message < ActiveRecord::Base
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

  validates :title, :content, :sender_id, :receiver_id, presence: true
  validate :sender_has_to_be_different_then_receiver

  def sender_has_to_be_different_then_receiver
    if sender == receiver
      errors.add(:receiver, "you can't send messages to yourself")
    end
  end

end
