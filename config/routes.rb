Rails.application.routes.draw do
  root to: "elements#index"
  resources :elements, only: %i[index show], path: "/", param: :name
end
