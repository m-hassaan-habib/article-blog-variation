# frozen_string_literal: true

class ArticleSerializer < ActiveModel::Serializer
  attributes :article, :variations

  def variations
    ActiveModel::Serializer::CollectionSerializer.new(object.variations,
                                                      each_serializer: VariationSerializer)
  end
end
