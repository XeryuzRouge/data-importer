Rails.application.routes.draw do
  resource :transactions, only: [:new, :create]

  root 'transactions#new'
end
