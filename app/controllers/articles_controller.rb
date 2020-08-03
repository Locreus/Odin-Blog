class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def new
        @articles = Article.new
    end

    def show
        @articles = Article.find(params[:id])
    end
end
