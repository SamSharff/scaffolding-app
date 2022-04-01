Rails.application.routes.draw do
  resources :resume_contents
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/resume_contents" => "resume_contents#index"
end
