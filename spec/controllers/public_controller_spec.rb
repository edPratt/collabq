require 'rails_helper'

describe PublicController do
  describe 'GET index' do
    context 'user signed out' do
      it 'renders the page' do
        get :index
        expect(response.status).to eq 200
      end
    end
  end
end
