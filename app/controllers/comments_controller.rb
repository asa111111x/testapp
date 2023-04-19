class CommentsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to @article
  end

  def new
    @article = Article.find(params[:article_id])
    @parent_comment = Comment.find(params[:comment_id])
  end

  
  private
    def comment_params
      params.require(:comment).permit(:content, :user_id, :article_id, :parent_id)
    end
end
