Rails.application.routes.draw do
  get 'panel/index'

  root 'panel#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
