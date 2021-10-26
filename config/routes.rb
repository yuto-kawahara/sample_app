Rails.application.routes.draw do
  resources :tweets do
    collection do
      get :list
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
