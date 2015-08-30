class BaseDecorator < Draper::Decorator
  def pretty_date(date)
    date.strftime("%H:%M:%S %d-%m-%Y ")
  end
end