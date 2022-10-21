Rails.application.routes.draw do
  namespace'api' do
    namespace 'v1' do 
      scope 'category' do
        get 'index', to: 'category#index'
        get 'show/:id', to: 'category#show'
        post 'create', to: 'category#create'
      end
    end
  end      
end
