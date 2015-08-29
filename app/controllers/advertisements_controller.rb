class AdvertisementsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_ownership, only: [:edit, :update, :destroy]

  expose(:advertisement, attributes: :advertisements_params)
  expose(:advertisements)

  def create
    advertisement.user = current_user
    if advertisement.save
      redirect_to(advertisement)
    else
      render :new
    end
  end

  def update
    if advertisement.save
      redirect_to(advertisement)
    else
      render :edit
    end
  end

  def destroy
    advertisement.destroy
    redirect_to advertisements_path, notice: 'Advertisement deleted'
  end

  private

  def advertisements_params
    params.require(:advertisement).permit(:address, :description, :end_date, :hide, :number_of_places, :price, :start_date, :title)
  end

  def check_ownership
    current_user.present? && current_user.owner?(advertisement)
  end
end
