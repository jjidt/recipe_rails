Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'recipes#index'})
  match('recipes/new', {:via => :get, :to => 'recipes#new'})
  match('recipes/', {:via => :post, :to => 'recipes#create'})
  match('recipes/:id', {:via => :get, :to => 'recipes#show'})
  match('recipes/:id/edit', {:via => :get, :to => 'recipes#edit'})
  match('recipes/', {:via => [:patch, :put], :to => 'recipes#update'})
  match('ingredients/', {:via => [:patch, :put], :to => 'ingredients#update'})
  match('ingredients/:id', {:via => :delete, :to => 'ingredients#delete'})
end
