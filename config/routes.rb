Rails.application.routes.draw do

  get 'users/show'
  get 'orders/admin' => 'orders#admin'
  get 'orders/donations' => 'orders.donations'
  resources :nonprofits, only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :order_items

  resources :types do
    resources :nonprofits, only: [:index, :show]
  end

  resource :cart, only: [:show]

  devise_for :users
   root to: "types#index"

   resources :users do

   end

   resources :charges

end
