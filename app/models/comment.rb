class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :advertisement

  def self.default_scope
    order('created_at desc')
  end
end
