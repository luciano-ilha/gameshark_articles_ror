require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  context 'GET #index' do
    let(:article) { FactoryBot.create(:article) }
    it 'should success and render to index page' do
      get :index
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end

    it 'array should be empty' do
      get :index
      expect(assigns(:articles)).to be_empty
    end
  end
end
