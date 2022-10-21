Rails.application.routes.draw do
  namespace'api' do
    namespace 'v1' do 
      scope 'category' do
        get 'index', to: 'category#index'
        get 'show/:id', to: 'category#show'
        post 'create', to: 'category#create'
        patch 'update/:id', to:  'category#update'
        delete 'delete/:id', to: 'category#delete'
      end
    end
  end      
end
