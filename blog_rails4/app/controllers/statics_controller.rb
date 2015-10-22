class StaticsController < ApplicationController
  def home
  end

  def contact
    @contact = Contact.new(contact_params)
    #trzeba wykryc czy poszedl post i czy udalo sie zapisac - jak tak to redirect to
    if request.post? && @contact.save
      redirect_to statics_contact_path, notice: 'Message has been sent'

    end
  end

  private

    def contact_params
      params[:contact].permit(:author, :subject, :body) unless params[:contact].nil?
    end
end
