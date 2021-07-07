Rails.application.routes.draw do
  namespace :api do
    resources :users, :sessions, :connections, :messages
  end
end
