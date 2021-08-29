Rails.application.routes.draw do
  namespace :api do
    resources :users, :sessions, :connections, :messages


  get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] } 


  end
end
