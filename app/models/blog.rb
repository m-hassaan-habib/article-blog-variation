# frozen_string_literal: true

class Blog < ApplicationRecord
  validates :name, presence: true

  has_many :articles, dependent: :destroy

  enum status: { active: 1, inactive: 0 }
end
