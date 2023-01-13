# frozen_string_literal: true

FactoryBot.define do
  factory :blog do
    name { 'john' }

    trait :active do
      status { :active }
    end

    trait :inactive do
      status { :inactive }
    end
  end
end
