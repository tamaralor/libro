Rails.application.routes.draw do
  get "/obras", to: "obras#index"

  get 'welcome/index'
    
    resources  :obras
    
    root 'welcome#index' 
 
end
