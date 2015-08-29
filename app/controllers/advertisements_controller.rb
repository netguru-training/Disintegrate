class AdvertisementsController < ApplicationController
  expose(:advertisement, attributes: :advertisements_params)
  expose(:advertisements)

  def create
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
    params.require(:advertisement).permit(:description, :end_date, :number_of_places, :price, :start_date, :title)
  end

end
