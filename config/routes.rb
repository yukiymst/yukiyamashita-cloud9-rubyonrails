Rails.application.routes.draw do
  # get 'stocks/index'
  # get '/blogs', to: 'blogs#index'
  # get '/stocks', to: 'stocks#index'
  # resources :contacts
  # get '/contacts/new', to: 'contacts#new'
  # post '/contacts', to: 'contacts#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs do 
    collection do
      post :confirm
    end
  end
end
