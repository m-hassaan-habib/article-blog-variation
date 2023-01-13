# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    blog
    article { 'Testing 123' }
  end
end
