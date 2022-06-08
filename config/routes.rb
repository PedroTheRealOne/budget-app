Rails.application.routes.draw do

  root to: "home#index"

  controller :transactions do
    get '/transactions',  action: :index, as: :transactions
    get '/transaction/:id',  action: :show, as: :transaction
    get '/transactions/new',  action: :new, as: :new_transaction
  end
  
end
