module Api
  module V1
    class ArticlesController < ApplicationController
      before_action :set_article, only: %i[show update ]
      skip_before_action :verify_authenticity_token
      def index
        articles = Article.all
        render json: articles
      end

      def show
        render json: @article
      end

      def update
        @article.update(article_params)
        render json: @article
      end

      private

      def set_article
        @article = Article.find(params[:id])
      end

      def article_params
        params.require(:article).permit(:title, :content, :image)
      end
    end
  end
end
