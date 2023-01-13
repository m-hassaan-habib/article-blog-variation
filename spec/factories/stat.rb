# frozen_string_literal: true

FactoryBot.define do
  factory :stat do
    variation
    sign_up_count { 2 }
    click_count { 1 }
    page_view_count { 3 }
  end
end
