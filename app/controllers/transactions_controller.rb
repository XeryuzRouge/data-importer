class TransactionsController < ApplicationController
  def new; end

  def create
    transactions_data = SpreadsheetParser.parse(params[:transactions])
    total = 0

    transactions_data.each do |row|
      total += row[2] * row[3]

      transaction_data = Hash[[headers, row].transpose]
      transaction = Transaction.new(transaction_data)
      transaction.save!
    end

    show_total(total)
  end

  private

  def headers
    %w[buyer item_description item_price item_quantity vendor_address vendor]
  end

  def show_total(total)
    flash[:alert] = "Total de ingresos importados: #{total}$"
    redirect_to action: 'new'
  end
end
