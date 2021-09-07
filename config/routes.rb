Rails.application.routes.draw do
  # root to: "welcome#index"
  # resources :table, only: %i[index show]
  root to: "elements#index"
  resources :elements, only: %i[index show], path: "/table/", param: :name
end
