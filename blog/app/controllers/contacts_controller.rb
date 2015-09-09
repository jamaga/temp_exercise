class ContactsController < ApplicationController
  def new
    #w widoku mielismy - new.html.erb mielismy zmienna @contact - wiec ja tworzymy
    @contact = Contact.new
  end

  def send_form
    @contact = Contact.new(params[:contact])
    if @contact.save
      redirect_to contacts_new_path, notice: 'udalo sie zapisac wiadomosc!'
    else
      render :new
    end
  end
end
