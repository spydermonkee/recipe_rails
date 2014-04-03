RecipeCentral::Application.routes.draw do

match("/", { via: :get, to: '#index' })
match("/recipes", { via: :get, to: 'recipes#index'})

end
