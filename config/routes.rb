RecipeCentral::Application.routes.draw do

# match("/recipes", { via: :get, to: 'recipes#index'})
# match("/recipes/new", {via: :get, to: 'recipes#new'})
# match("/recipes/new", {via: :post, to: 'recipes#create'})
# match("/recipes/:id", {via: :get, to: 'recipes#show'})
# match("/recipes/:id", {via: :delete, to: 'recipes#destroy'})
# match("/recipes/:id/edit", {via: :get, to: 'recipes#edit'})
# match("/recipes/:id", {via: [:patch, :post], to: 'recipes#update'})

resources :recipes
resources :tags



end
