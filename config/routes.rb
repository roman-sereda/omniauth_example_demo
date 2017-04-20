Rails.application.routes.draw do

  root to: 'pages#index'

  match'/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  delete '/logout', to: 'sessions#destroy'

end
