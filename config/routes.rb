Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, :school_classes, only: [:index, :new, :create, :edit, :show, :update]
  # resources :school_classes, only: [:index, :new, :create, :show, :update, :edit]
end
