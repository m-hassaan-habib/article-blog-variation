# frozen_string_literal: true

FactoryBot.define do
  factory :variation do
    article
    article_variation { 'Working 123' }
  end
end
