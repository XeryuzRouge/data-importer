require 'rails_helper'

RSpec.describe SpreadsheetParser do
  let(:rows) { described_class.parse(Rails.root.join('spec/fixtures/files/example.tab.xlsx')) }

  describe 'parse' do
    it 'works with xlsx files' do
      expect(rows.length).to eq(4)
    end

    it 'returns rows in a proper format' do
      expect(rows[0]).to eq(['Snake Plissken', '$10 off $20 of food', 10.0, 2.0, '987 Fake St', "Bob's Pizza"])
    end
  end
end
