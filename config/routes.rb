Rails.application.routes.draw do
  resource :transactions, only: [:new]

  root 'transactions#new'
end
