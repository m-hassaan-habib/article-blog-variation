# frozen_string_literal: true

class StatSerializer < ActiveModel::Serializer
  attributes :id, :sign_up_count, :click_count, :page_view_count

  has_one :article_variation, serializer: ArticleVariationSerializer
end
