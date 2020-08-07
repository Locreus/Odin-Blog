class ArticlesController < ApplicationController
    include ArticlesHelper
    before_action :require_login, except: [:show, :index]

    def index
        @articles = Article.all
    end

    def new
        @articles = Article.new
    end

    def show
        @articles = Article.find(params[:id])
        @comments = Comment.new
        @comments.article_id = @articles.id
    end

    def create
        @articles = Article.new(article_params)
        @articles.save
        flash.notice = "Article #{@articles.title} has been created."
        redirect_to articles_path(@articles)
    end

    def destroy
        @articles = Article.find(params[:id])
        @articles.destroy
        flash.notice = "Article #{@articles.title} has been deleted."
        redirect_to articles_path()
    end

    def edit
        @articles = Article.find(params[:id])
    end

    def update
        @articles = Article.find(params[:id])
        @articles.update(article_params)
        flash.notice = "Article #{@articles.title} has been updated."
        redirect_to articles_path(@articles)
    end
end
