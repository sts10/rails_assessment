class PostsController < ApplicationController
  def index
    @posts = Post.all
  end 

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new 
  end 

  def new
    @post = Post.new
  end

  def create
    # POST '/posts'
  
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post # "/posts"
    else
      render :new
    end
    
  end 

  def edit
    @post = Post.find(params[:id])  
  end 

  def update
    @post = Post.update(post_params)
    if @post.save
      redirect_to "/posts"
    else
      render :edit 
    end
  end 

  def destroy
    @post = Post.find(params[:id])  
    @post.destroy 
    redirect_to "/posts"
  end 

  private
    def post_params
      params.require(:post).permit(:title, :author, :content)
    end
end
