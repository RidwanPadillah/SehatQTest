Rails.application.routes.draw do
  get 'doctors', to: 'doctors#index'
  get 'hospitals', to: 'hospitals#index'
  post 'books', to: 'books#create'
  get 'schedules', to: 'schedules#index'
end
