Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'jobs#index'

  get 'about' => 'pages#about'

  get 'search' => 'jobs#index', :as => 'search_page'

  resources :jobs
end
