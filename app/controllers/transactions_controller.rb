class TransactionsController < ApplicationController
  def new; end

  def create
    transactions_data = SpreadsheetParser.parse(params[:transactions])

    transactions_data.each do |row|
      transaction_data = Hash[[headers, row].transpose]
      transaction = Transaction.new(transaction_data)
      transaction.save!
    end
  end

  private

  def headers
    %w[buyer item_description item_price item_quantity vendor_address vendor]
  end
end
