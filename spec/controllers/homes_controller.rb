require 'rails_helper'

describe HomesController do
  describe 'GET #index' do
    before(:each) { get :index }

    it 'responds with a status code of 200' do
      expect(response.status).to eq 200
    end

    it 'renders the homes#index template' do
      expect(response).to render_template(:index)
    end
  end
end
