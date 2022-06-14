Rails.application.routes.draw do

  root to: "home#index"

  controller :transactions do
    get '/transactions',  action: :index, as: :transactions
    get '/transaction/:id',  action: :show, as: :transaction
    get '/transactions/new',  action: :new, as: :new_transaction
    post '/transactions', action: :create, as: false
    get 'transaction/:id/edit', action: :edit, as: :edit_transaction
    patch 'transaction/:id', action: :update, as: false
    delete '/transaction/:id', action: :destroy, as: false
  end
  
end
