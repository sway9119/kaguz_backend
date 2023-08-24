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
  