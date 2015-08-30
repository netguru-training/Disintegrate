class AdvertisementDecorator < ApplicationDecorator

  %w(start_date end_date).each do |method|
    define_method method do
      object.public_send(method).strftime('%d-%m-%Y')
    end
  end
end
