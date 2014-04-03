RecipeCentral::Application.routes.draw do

match("/recipes", { via: :get, to: 'recipes#index'})
match("/recipes/:id", {via: :get, to: 'recipes#show'})

end
