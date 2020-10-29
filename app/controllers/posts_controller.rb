class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post_title = params[:title]
    post_desc = params[:description]
    new_post = Post.create(title: post_title, description: post_desc)

    redirect_to post_path(new_post.id)

    # post = Post.new
    # post.title = params[:title]
    # post.description = params[:description]
    # post.save
  end
  # add create method here
end
