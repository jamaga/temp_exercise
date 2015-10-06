class PostsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  after_filter :notify_log, :only => [:create]

  def alert_post
    #uzytjkownik klika i sie ta metoda wywoluje:
    #date_zgloszenia, id_postu, ilosc_zgloszen
    # polaczyc relacje z innym modelem musze:
    #1. musze ZNALESC POSTA:
    @post = Post.find(params[:id])
    #polaczyc POSTA z ALERTEM - laczymy zawsze po id
    @alert = @post.alerts.build
    @alert.alert_count = @alert.alert_count + 1
    @alert.alert_date = Time.now
    @alert.save

    render json: @alert
    # powyzej juz mamy akcje
  end

  def index
    #@posts = Post.all

    @posts = Post.paginate(:page => params[:page], :per_page => 7)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @post.visits_count = @post.visits_count + 1
    @post.save
    #@post.update_attribute(:visits_count, @post.visits_count + 1)


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = current_user.posts.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = current_user.posts.where(id: params[:id]).first
    if @post.nil?
      redirect_to posts_path, notice: 'post not found'
    end
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = current_user.posts.build(params[:post])
    @post.save

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = current_user.posts.where(id: params[:id]).first

    if @post.nil?
      redirect_to posts_url, notice: 'post not found'
    else
      if @post.update_attributes(params[:post])
       redirect_to @post, notice: 'Post was successfully updated.'
      else
        render action: "edit"
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = current_user.posts.where(id: params[:id]).first
    if @post.nil?
      redirect_to posts_url, notice: 'post not found'
    else
      @post.destroy
      redirect_to posts_url
    end
  end

  private

    def notify_log
      #puts '____________________________________________________'
    end

end
