# frozen_string_literal: true

class Article < ApplicationRecord
  validates :article, presence: true

  belongs_to :blog

  has_many :variations, dependent: :destroy
end
