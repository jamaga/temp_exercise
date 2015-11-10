class WinterPromoController < ApplicationController
  def show

  end

  def save
    if params[:winter_promo][:email].blank? || params[:winter_promo][:name].blank? || params[:winter_promo][:surname].blank?
      @error = 'Formularz jest niepoprawny'
      render :show
    else
      redirect_to winter_promo_success_path
    end
  end

  def success
  end
end
