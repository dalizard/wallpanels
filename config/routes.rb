Wallpanels::Application.routes.draw do
  match '/designs'         => 'pages#all_designs'
  match '/designs/*design' => 'pages#design'
  root :to => 'pages#index'
end
