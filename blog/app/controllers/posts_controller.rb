class PostsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  # GET /posts
  # GET /posts.json
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
end
