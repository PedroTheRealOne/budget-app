Rails.application.routes.draw do
  # Home
  root to: "home#index"
  # Transactions
  get '/transactions', controller: :transaction, action: :index, as: :transactions
  get '/transactions/:id',  controller: :transaction, action: :show, as: :transaction
end
