Rails.application.routes.draw do
  get   '/'               => 'items#index'
  get   '/pills'          => 'items#index'

  get   '/pills/new'      => 'items#new'
  post  '/pills'          => 'items#create'

  get   '/pills/:id'      => 'items#show'

  get   '/pills/:id/edit' => 'items#edit'
  patch '/pills/:id'      => 'items#update'

  delete '/pills/:id'     => 'items#destroy'
end
