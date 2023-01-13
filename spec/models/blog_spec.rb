# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Blog, type: :model do
  let(:blog) { described_class.new }

  context 'model validation' do
    it 'should not be valid without a name' do
      blog.name = nil
      expect(blog).to_not be_valid
    end

    it 'should be valid with valid attributes' do
      blog.name = 'Anything'
      expect(blog).to be_valid
    end
  end

  context 'association' do
    it 'should have many articles' do
      expect(described_class.reflect_on_association(:articles).macro).to eq(:has_many)
    end
  end
end
