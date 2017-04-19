Rails.application.routes.draw do

  root to: 'pages#index'

  match '*any' => 'application#options', :via => [:options]

  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

end
