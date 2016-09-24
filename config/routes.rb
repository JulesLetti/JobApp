Rails.application.routes.draw do
  resources :job_applications
  resources :job_listings
  resources :student_profiles
  resources :skills do
    member do
      get :add_user_to, :remove_user_from

    end
  end
  resources :skill_categories
  resources :company_profiles do
      collection do
          post 'search'
      end
  end

  devise_for :users, controllers: { registrations: "registrations" }
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
