# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Stat, type: :model do
  context 'association' do
    it 'should belongs to variation' do
      expect(described_class.reflect_on_association(:variation).macro).to eq(:belongs_to)
    end
  end
end
