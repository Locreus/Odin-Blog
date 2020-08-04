class CommentsController < ApplicationController
    include CommentsHelper
    def create
        @comments = Comment.new(comment_params)
        @comments.article_id = params[:article_id]
        @comments.save
        redirect_to articles_path(@comments.article)
    end
end
