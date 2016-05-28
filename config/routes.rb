Rails.application.routes.draw do

  devise_for :users
  root  to:  'items#index'

  get   '/pills'          => 'items#index'
  get   '/pills/random'   => 'items#random'

  get   '/pills/new'      => 'items#new'
  post  '/pills'          => 'items#create'

  get   '/pills/:id'      => 'items#show'

  get   '/pills/:id/edit' => 'items#edit'
  patch '/pills/:id'      => 'items#update'

  delete '/pills/:id'     => 'items#destroy'

  post   '/orders/'       => 'orders#create'
  get    '/orders/:id'    => 'orders#show'

  post   '/carted_items'      => 'carted_items#create'
  get    '/carted_items/:id'  => 'carted_items#show'

end
