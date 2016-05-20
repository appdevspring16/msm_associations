Rails.application.routes.draw do
  # Routes for the Character resource:
  # CREATE
  get "/characters/new", :controller => "characters", :action => "new"
  post "/create_character", :controller => "characters", :action => "create"

  # READ
  get "/characters", :controller => "characters", :action => "index"
  get "/characters/:id", :controller => "characters", :action => "show"

  # UPDATE
  get "/characters/:id/edit", :controller => "characters", :action => "edit"
  post "/update_character/:id", :controller => "characters", :action => "update"

  # DELETE
  get "/delete_character/:id", :controller => "characters", :action => "destroy"
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get "/actors/new", :controller => "actors", :action => "new"
  post "/create_actor", :controller => "actors", :action => "create"

  # READ
  get "/actors", :controller => "actors", :action => "index"
  get "/actors/:id", :controller => "actors", :action => "show"

  # UPDATE
  get "/actors/:id/edit", :controller => "actors", :action => "edit"
  post "/update_actor/:id", :controller => "actors", :action => "update"

  # DELETE
  get "/delete_actor/:id", :controller => "actors", :action => "destroy"
  #------------------------------

  # Routes for the Movie resource:
  # CREATE
  get "/movies/new", :controller => "movies", :action => "new"
  post "/create_movie", :controller => "movies", :action => "create"

  # READ
  get "/movies", :controller => "movies", :action => "index"
  get "/movies/:id", :controller => "movies", :action => "show"

  # UPDATE
  get "/movies/:id/edit", :controller => "movies", :action => "edit"
  post "/update_movie/:id", :controller => "movies", :action => "update"

  # DELETE
  get "/delete_movie/:id", :controller => "movies", :action => "destroy"
  #------------------------------

  # Routes for the Director resource:
  # CREATE
  get "/directors/new", :controller => "directors", :action => "new"
  post "/create_director", :controller => "directors", :action => "create"

  # READ
  get "/directors", :controller => "directors", :action => "index"
  get "/directors/:id", :controller => "directors", :action => "show"

  # UPDATE
  get "/directors/:id/edit", :controller => "directors", :action => "edit"
  post "/update_director/:id", :controller => "directors", :action => "update"

  # DELETE
  get "/delete_director/:id", :controller => "directors", :action => "destroy"
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end


#In what year was the oldest movie in our list released?
# => Movie.order('Year').first

#In what year was the most recent movie in our list released?
# => Movie.order('Year').last

#What is the duration of the shortest movie in our list?
# => Movie.order('Duration').first

#What is the longest movie in our list?
# => Movie.order('Duration').last

#How many movies in our list have the word 'godfather' in their titles?
# => Movie.where("Title like ?", "%Godfather%")

#Who directed Life Is Beautiful?
# => Movie.joins(:Director).where(title: 'Life Is Beautiful').pluck(:name)

#How many movies in our list were directed by Francis Ford Coppola?
# => Director.where(name: 'Francis Ford Coppola').joins(:Movies).count

#What is the most recent movie in our list directed by Francis Ford Coppola?
# => Director.where(name: 'Francis Ford Coppola').includes(:Movies).order('Year').pluck('Title').first
