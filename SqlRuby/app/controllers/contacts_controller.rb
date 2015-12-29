class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    #wyciagamy z tabeli COntacts przez model Contact wszystkie wyniki
    #@contacts = Contact.all
    #SELECT * FROM contacts WHERE name LIKE '%aa%' AND created_at != '0000-00-00 00:00:00' AND email IS NOT NULL;
    #@contacts = Contact.where('name LIKE "%aa%" AND created_at != "0000-00-00 00:00:00" AND email IS NOT NULL')
    #@contacts = Contact.where("name LIKE ?", "%aa%").where.not(:email => nil).where.not(:created_at => '0000-00-00 00:00:00')
    #@contacts = Contact.where("name LIKE :name AND created_at != :date", :name => "%aa%", :date => '0000-00-00 00:00:00' ).where("email IS NOT NULL")

    #SELECT name, email, description FROM contacts WHERE name LIKE '%aa%' AND created_at != '0000-00-00 00:00:00' AND email IS NOT NULL;
    #@contacts = Contact.select(:id, :name, :email, :description)
                   # .where("name LIKE ?", "%aa%")
                   # .where.not(:email => nil)
      # .where.not(:created_at => '0000-00-00 00:00:00')

    #@contacts = Contact.select('id, name, email, description')
                  #  .where("name LIKE ?", "%aa%")
                  #  .where.not(:email => nil)
                 #   .where.not(:created_at => '0000-00-00 00:00:00')

    # @contacts = Contact.select('id', 'name', 'email', 'description')
    #                 .where("name LIKE ?", "%aa%")
    #                 .where.not(:email => nil)
    #                 .where.not(:created_at => '0000-00-00 00:00:00')


    # SELECT id, name, email, description FROM contacts
    # WHERE name LIKE '%aa%' AND created_at != '0000-00-00 00:00:00' AND email IS NOT NULL
    # ORDER BY id DESC
    # LIMIT 2;

    @contacts = Contact.select(:id, :name, :email, :description)
                    .where("name LIKE ?", "%aa%")
                    .where.not(:email => nil)
                    .where.not(:created_at => '0000-00-00 00:00:00')
                    .group(:email)
                    .order("id DESC")
                    .limit(10)

  end


  # GET /contacts/1
  # GET /contacts/1.json
  def show
    #tutaj znajduje w bazie danych po ID wlasciwy wpis:
    #pobiera params id - pobiera 3 i za pomoca find znajduje po id konkretny wpis
    #@contact = Contact.find_by(:email => 'a@a', :id => 10)
    @contact = Contact.find(params[:id])
    # robimy ZLACZENIE - wyszukalismy zlaczenie ktore jest po ID odpowiednim
    # w zmiennej @contact_details mamy juz dane szczegolowe kontaktu
    @contact_details = @contact.contact_detail

    # SELECT c.id, c.name, c.email, c.description, cd.address, CONCAT(cd.name, ' ', cd.surname) AS full_name FROM contacts AS c
    # LEFT JOIN contact_details AS cd ON c.id = cd.contact_id

    # zlaczenie
    # @contact_info = Contact.joins(:contact_detail) - mamy zlaczenie i ZWRACA NAM WSZYSTKO
    # a teraz chcemy zawezic wyniki do jednego ID
    #@contact_info = Contact.joins(:contact_detail).where(id: params[:id]).first

    #chcemy wyciagnac pola jakie mamy w sql
    @contact_info = Contact.select('contacts.id, contacts.name, contacts.email,
                                   contacts.description, contact_details.address,
                                    CONCAT(contact_details.name, " ", contact_details.surname) AS full_name')
                           .joins('LEFT JOIN contact_details ON contacts.id = contact_details.contact_id')
    .where('contacts.id = ?', params[:id]).first

    puts @contact_info.to_yaml
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :description)
    end
end
