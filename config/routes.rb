Atlas::Application.routes.draw do
  resources :busca, :only => [:index]

  post "busca/resultado"

  resources :faqs

  devise_for :users

  resources :chamados do
    member do
      get :adicionar_tramite
    end
  end
  
  resources :sistemas
  
  resources :clientes do  
    resources :sistemas, :only => [:por_cliente] do
      collection do
        get :por_cliente
      end
      
      member do
        get :contrato
      end
    end
    
    resources :contatos, :only => [:por_cliente] do
      collection do
        get :por_cliente
      end
    end
  end

 root :to => "faqs#index"

end
