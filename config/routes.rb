Wallpanels::Application.routes.draw do
  get '/designs'         => 'pages#all_designs'
  get '/designs/*design' => 'pages#design'
  get '/contacts'        => 'pages#contacts'
  get '/eco_products'    => 'pages#eco_products'
  root :to => 'pages#index'
end
