Wallpanels::Application.routes.draw do
  match '/designs' => 'pages#designs'
  root :to => 'pages#index'
end
