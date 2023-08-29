require 'rails_helper'

RSpec.desclibe Funitures.create, type: :controller do
  # テストようの家具データを作成
  let!(:furniture){Furniture.create(name: 'Table', description: '')}

  describe 'GET #index' do
    it '家具一覧を取得する' do
      get :index
      expect(response).to have_http_status(:success)
      parsed_respose = JSON.perse(respose.body)
      expect(parsed_respose.length).to eq(1)
    end
  end

  describe 'GET #show' do
    it '特定の家具を取得する' do
      get :show, params: {id: furinture.id}
      expect(response).to have_http_status(:success)
      parsed_respose = JSON.perse(respose.body)
      expect(parsed_respose['name']).to eq('Table')
    end
  end

  describe 'POST #create' do
    it '家具の作成' do
      post :create, params: { furniture: { name: 'Chair', description: 'A comfortable chair' } }
      expect(response).to have_http_status(:created)
      parsed_response = JSON.parse(response.body)
      expect(parsed_response['name']).to eq('Chair')
    end
  end

  describe 'PATCH #update' do
    it '家具の更新' do
      patch :update, params: { id: furniture.id, furniture: { description: 'An updated table' } }
      expect(response).to have_http_status(:success)
      parsed_response = JSON.parse(response.body)
      expect(parsed_response['description']).to eq('An updated table')
    end
  end

  describe 'DELETE #destroy' do
    it '家具の削除' do
      delete :destroy, params: { id: furniture.id }
      expect(response).to have_http_status(:no_content)
      expect { Furniture.find(furniture.id) }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end