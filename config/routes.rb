Rails.application.routes.draw do
  # Home
  root to: "home#index"
  # Transactions
  get '/transactions', controller: :transaction, action: :index, as: :transactions

  get '/transaction/:id',  controller: :transaction, action: :show, as: :transaction

  get '/transactions/new', controller: :transaction, action: :new, as: :new_transaction
end
