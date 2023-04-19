class VoteController < ApplicationController
    def upvote
      @votable = find_votable
      @vote = @votable.votes.where(user_id: current_user.id).first_or_initialize
      if @vote.save
        render json: { status: 'success', vote: @vote }
      else
        render json: { status: 'error', errors: @vote.errors }
      end
    end
    
    def unvote
      @votable = find_votable
      @vote = @votable.votes.where(user_id: current_user.id).first
      if @vote && @vote.destroy
        render json: { status: 'success', vote: @vote }
      else
        render json: { status: 'error', errors: ['Vote not found'] }
      end
    end
    private
  
    def find_votable
      if params[:article_id]
        Article.find(params[:article_id])
      elsif params[:comment_id]
        Comment.find(params[:comment_id])
      end
    end
end
