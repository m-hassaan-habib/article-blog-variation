# frozen_string_literal: true

class Variation < ApplicationRecord
  validates :article_variation, presence: true

  belongs_to :article

  has_one :stat, dependent: :destroy
end
