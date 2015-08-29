class Message < ActiveRecord::Base
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

  validates :content, :sender_id, :receiver_id, presence: true
  validate :sender_has_to_be_different_then_receiver

  def self.by_users(user1, user2)
    where('sender_id = ? AND receiver_id = ? OR sender_id = ? AND receiver_id = ? ', user1, user2, user2, user1)
  end

  def sender_has_to_be_different_then_receiver
    if sender == receiver
      errors.add(:receiver, "you can't send messages to yourself")
    end
  end

end
