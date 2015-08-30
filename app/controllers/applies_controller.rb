class AppliesController < ApplicationController

  before_action :authenticate_user!

  def create

    begin
      advertisement = Advertisement.find(params[:advertisement_id])
    rescue ActiveRecord::RecordNotFound
      redirect_to advertisements_path, alert: t('Advertisement does not exist')
    end

    application = Application.create({:user => current_user, :advertisement => advertisement} )

    if application.save
      redirect_to advertisement_path(advertisement), notice: t('Your application has been saved')
    else
      redirect_to advertisement_path(advertisement), alert: application.errors.full_messages.first
    end
  end


  private

  def applications_params
    params.require(:advertisement_id)
  end


end


