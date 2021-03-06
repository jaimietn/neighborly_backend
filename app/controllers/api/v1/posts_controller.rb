class Api::V1::PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post
      # , status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    render json: @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private

    def post_params
      params.require(:post).permit(:id, :user_id, :username, :longitude, :latitude, :posted, :expires, :category, :title, :content, :image, :neighborhood)
    end

end
