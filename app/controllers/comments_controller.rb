class CommentsController < ApplicationController
  def create
    # binding.pry
    @post = Post.find(params[:post_id])
    @post.comments.build(:author => params[:author], :content => params[:content])
    if @post.save
      redirect_to :back
    else
      redirect_to :back
    end
  end 

  private
    def comment_params
      params.require(:post).permit(:author, :content)
    end
end
