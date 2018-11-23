Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
  get "doses/:id", to: "doses#show", as: :dose
  get "doses", to: "doses#index", as: :doses

end
