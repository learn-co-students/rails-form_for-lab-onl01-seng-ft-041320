
Rails.application.routes.draw do

#get '/students/:id/view', to: "students#show_special_view"
resources :students, :school_classes, only: [:new, :create, :show, :edit, :update]


  
end
