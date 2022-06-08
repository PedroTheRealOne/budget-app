Rails.application.routes.draw do
  # Home
  root to: " home#index"
  get '/', controller: :home, action: :index

  # Transactions
  get '/transactions', controller: :transaction, action: :index, as: :transaction
end
