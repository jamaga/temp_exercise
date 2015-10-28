class LandingPagesController < ApplicationController
  def summer_promo
    if request.post?
      @p_code = PromoCode.find_by_code(params[:code])
      unless @p_code.nil?
        cookies[:promo_code] = { :value => @p_code.code, :expires => Time.now + (3600 * 24) }
        session[:success] = true
        redirect_to landing_pages_promo_success_path
      else
        flash[:error] = 'INVALID Promocode'
        redirect_to landing_pages_summer_promo_path
      end
    end
  end

  def promo_success
    unless session[:success] == true
      redirect_to landing_pages_summer_promo_path
    else
      #zeby moc wyswietlic kod i znizke w widoku
      @promo_code = PromoCode.find_by_code(cookies[:promo_code])
      #niszczymy sesje:
      session.delete :success
    end
  end
end

