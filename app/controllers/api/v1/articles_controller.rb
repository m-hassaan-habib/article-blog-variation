# frozen_string_literal: true

module Api
  module V1
    class ArticlesController < ApplicationController
      before_action :set_article_variation, except: [:index]

      def index
        render json: Blog.active, each_serializer: BlogSerializer
      end

      def set_article_sign_up_count
        @article.stat.increment!(event)
      end

      def set_article_page_view
        @article.stat.increment!(event)
      end

      private

      def set_article_variation
        @article = Variation.find(params[:article_id])
      end

      def event
        "#{params[:event]}Count".underscore.to_sym
      end
    end
  end
end
