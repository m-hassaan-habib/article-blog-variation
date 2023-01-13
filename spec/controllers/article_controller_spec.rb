# frozen_string_literal: true

require 'rails_helper'

# rubocop:disable Metrics/BlockLength

RSpec.describe Api::V1::ArticlesController, type: :controller do
  let(:blog) { FactoryBot.create(:blog) }
  let(:article) { FactoryBot.create(:article, blog:) }
  let(:variation) { FactoryBot.create(:variation, article:) }
  let(:stat) { FactoryBot.create(:stat, variation:) }

  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end

    it 'renders JSON with active blogs' do
      active_blog = FactoryBot.create(:blog, :active, name: 'leo')
      inactive_blog = FactoryBot.create(:blog, :inactive)

      get :index

      expect(response).to be_successful
      parsed_response = JSON.parse(response.body)
      expect(parsed_response.first['name']).to include(active_blog.name)
      expect(parsed_response.first['name']).not_to include(inactive_blog.name)
    end
  end

  describe 'PUT #set_article_sign_up_count' do
    before do
      stat
    end

    it 'increments the sign-up count in the associated stat' do
      expect do
        put :set_article_sign_up_count, params: { article_id: variation.id, event: 'SignUp' }
      end.to change { variation.stat.reload.sign_up_count }.by(1)

      expect(response).to be_successful
    end
  end

  describe 'POST #set_article_page_view' do
    before do
      stat
    end

    it 'increments the page view count in the associated stat' do
      expect do
        post :set_article_page_view, params: { article_id: variation.id, event: 'PageView' }
      end.to change { variation.stat.reload.page_view_count }.by(1)

      expect(response).to be_successful
    end
  end
end

# rubocop:enable Metrics/BlockLength
