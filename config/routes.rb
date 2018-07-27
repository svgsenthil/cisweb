Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/api' do
    #resources :users, except: [:new, :edit]
    resources :defects, except: [:new, :edit]
    resources :defect_details, except: [:new, :edit]
  end
end
