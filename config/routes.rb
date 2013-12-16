LifeInsurance::Application.routes.draw do
 
  root 'insurance_queries#index'

  # post 'insurance_queries#create'

  resources :insurance_queries
end
