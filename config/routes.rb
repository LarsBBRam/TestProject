Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :blog_posts

  # get "blogposts", to: "blog_posts#index", as: :blog_posts

  # get "/blogposts/new", to: "blog_posts#new", as: :new_blog_post

  # get "/blogposts/:id", to: "blog_posts#show", as: :show_blog_post

  # post "/blogposts/", to: "blog_posts#create", as: :create_blog_post
  # 
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
