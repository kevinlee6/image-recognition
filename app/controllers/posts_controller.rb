class PostsController < ApplicationController
  # Imports the Google Cloud client library
  require "google/cloud/vision"

  # Your Google Cloud Platform project ID
  # project_id = ENV["GOOGLE_APPLICATION_CREDENTIALS"]

  # # Instantiates a client
  # @vision = Google::Cloud::Vision.new project: project_id

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    project_id = ENV["GOOGLE_APPLICATION_CREDENTIALS"]

    # Instantiates a client
    @vision = Google::Cloud::Vision.new project: project_id
    # The name of the image file to annotate
    file_name = rails_blob_url(@post.image)
    pp file_name
    # Performs label detection on the image file
    labels = @vision.image(file_name).labels
    
    puts "Labels:"
    labels.each do |label|
      puts label.description
    end

    respond_to do |format|
      if @post.save
        format.html { redirect_to "/#{current_user.username}", notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to "/#{current_user.username}", notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :image)
    end
end
