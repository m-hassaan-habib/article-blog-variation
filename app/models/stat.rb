# frozen_string_literal: true

class Stat < ApplicationRecord
  belongs_to :variation

  before_update :calculate_click_through_rate

  private

  def calculate_click_through_rate
    self.ctr = sign_up_count.to_f / page_view_count if page_view_count != 0
  end
end
