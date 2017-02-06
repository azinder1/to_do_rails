Rails.application.routes.draw do
  resources :chores do
    resources :jobs
  end
end
