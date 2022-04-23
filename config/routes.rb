Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  namespace :api do
    namespace :v1 do
   
      # Article routes
      get '/articles/index', to: 'articles#index'
      get '/articles/:id', to: 'articles#show'
      get '/articles/:id/edit', to: 'articles#edit'
      put '/articles/:id', to: 'articles#update'
    end
  end
end
