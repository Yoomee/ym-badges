Rails.application.routes.draw do
  
  resources :badges, :except => :show
  
end
