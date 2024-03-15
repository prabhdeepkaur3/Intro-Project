Rails.application.routes.draw do
  root 'about#index'
  get '/courses/index', to: 'course#index'
  get '/courses/show', to: 'course#show'
end
