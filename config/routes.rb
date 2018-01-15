Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'
  resources :poems do
    resources :replies
  end
end
