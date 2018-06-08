Rails.application.routes.draw do

  scope module: 'site' do
    root 'mains#show'
    resources :jobs
    resources :products, only: :index
    resources :demands, only: [:new, :create, :show]
    get '/p/:alias', to: 'pages#show'
  end

  namespace :admin do
    get '/', to: 'mains#show'
    get 'login', to: 'sessions#new'
    delete 'logout' => 'sessions#destroy'
    resources :sessions, only: [:create]
    resources :companies, :jobs, :bosses, :pages, :articles, :article_categories
    resources :feedbacks do
      patch :switch, on: :member
    end
    resources :demands do
      patch :switch, on: :member
    end
    resources :enterprises
    resources :bosses
    resources :headhunters
    resources :organization_categories
  end
end
