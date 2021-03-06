class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :send_messages, :class_name => "Message", :foreign_key => "sender_id"
  has_many :received_messages, :class_name => "Message", :foreign_key => "receiver_id"
  has_many :advertisements
  has_many :comments

  validates_presence_of :email, :description, :name

  def can_edit(user)
    self == user
  end

  def owner?(advertisement)
    advertisement.user_id == self.id
  end

end
