require 'rails_helper'

RSpec.describe TransactionsController do
  describe 'POST #create' do
    it 'stores the submited spreadhseet' do
      expect do
        post :create, params: { transactions: Rails.root.join('spec/fixtures/files/example.tab.xlsx') }
      end.to change(Transaction, :count)
    end

    it 'shows total' do
      post :create, params: { transactions: Rails.root.join('spec/fixtures/files/example.tab.xlsx') }

      expect(response).to redirect_to('/transactions/new')
      expect(flash[:alert]).to eq('Total de ingresos importados: 95.0$')
    end
  end
end
