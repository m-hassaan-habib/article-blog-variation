# frozen_string_literal: true

class BlogSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :articles, each_serializer: ArticleSerializer

  class ArticleSerializer < ActiveModel::Serializer
    attributes :article, :article_variations

    def article_variations
      ActiveModelSerializers::SerializableResource
        .new(object.variations, each_serializer: ArticleVariationSerializer)
    end
  end

  class ArticleVariationSerializer < ActiveModel::Serializer
    attributes :id, :article_variation
  end
end
