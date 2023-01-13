# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Variation, type: :model do
  let(:variation) { described_class.new }
  let(:blog) { FactoryBot.create(:blog) }
  let(:article) { FactoryBot.create(:article, blog:) }

  context 'model validation' do
    it 'should not be valid without valid attributes and association' do
      variation.article_variation = nil
      expect(variation).to_not be_valid
    end

    it 'should be valid with valid attributes' do
      variation.article_variation = 'Anything'
      variation.article_id = article.id
      expect(variation).to be_valid
    end
  end

  context 'association' do
    it 'should have one statistics' do
      expect(described_class.reflect_on_association(:stat).macro).to eq(:has_one)
    end

    it 'should belongs to a article' do
      expect(described_class.reflect_on_association(:article).macro).to eq(:belongs_to)
    end
  end
end
