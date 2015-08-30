class BaseDecorator < Draper::Decorator
  delegate_all

  def pretty_date(date)
    date.strftime("%H:%M:%S %d-%m-%Y ")
  end
end