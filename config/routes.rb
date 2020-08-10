Rails.application.routes.draw do
  get 'o_auth/login'
  get 'o_auth/callback'
  get 'o_auth/uninstall'
  post 'o_auth/authorized'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
