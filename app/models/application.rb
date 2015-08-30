class Application < ActiveRecord::Base
  belongs_to :user
  belongs_to :advertisement
  
  validate :is_not_advertisement_owner, on: :create
  validate :is_unique_apply, on: :create

  def is_not_advertisement_owner
    errors.add(:user, I18n.t('You can not apply for your own advertisement') ) if user == advertisement.user
  end

  def is_unique_apply
    return unless Application.find_by(user: user, advertisement: advertisement).present?
    errors.add(:base, I18n.t('You can not apply for the same advertisement again'))
  end


end
