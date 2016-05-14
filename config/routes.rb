Rails.application.routes.draw do
  
  get 'cart/index'

  resources :products
  root 'page#home'
  
  get 'page/home'

  get 'page/about'

  get 'page/faqs'

  get 'page/contact'

 
end
