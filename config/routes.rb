Rails.application.routes.draw do
  
  namespace :api do
    resources :categories do
      resources :cards
    end
    get "new_game", to: "categories#new_game"
    post "create_category_with_cards", to:
    "categories#create_category_with_cards"
  end
end
