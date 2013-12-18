LifeInsurance::Application.routes.draw do
 
  root 'insurance_queries#index'

  # post 'insurance_queries#create'

  post 'insurance_queries/create', to: 'insurance_queries#create', as: 'create'
  get  'insurance_queries/:id/', to: 'insurance_queries#show', as: 'show'
end
