# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { described_class.new }
  let(:blog) { FactoryBot.create(:blog) }

  context 'model validation' do
    it 'should not be valid without valid attributes and association' do
      article.article = nil
      expect(article).to_not be_valid
    end

    it 'should be valid with valid attributes' do
      article.article = 'Anything'
      article.blog_id = blog.id
      expect(article).to be_valid
    end
  end

  context 'association' do
    it 'should have many variations' do
      expect(described_class.reflect_on_association(:variations).macro).to eq(:has_many)
    end

    it 'should belongs to a blog' do
      expect(described_class.reflect_on_association(:blog).macro).to eq(:belongs_to)
    end
  end
end
