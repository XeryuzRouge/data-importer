require 'rails_helper'

RSpec.describe TransactionsController do
  describe 'POST #create' do
    it 'stores the submited spreadhseet' do
      expect do
        post :create, params: { transactions: Rails.root.join('spec/fixtures/files/example.tab.xlsx') }
      end.to change(Transaction, :count)
    end
  end
end
