Rails.application.routes.draw do
  resources :posts do
    resource :comments
  end

# get '/posts/:post_id/comments',         to: 'comments#index', as: 'comments'
# post '/posts/:post_id/comments',        to: 'comments#create'
# get '/posts/:post_id/comments/new',     to: 'comments#new', as: 'new_comment'
# get '/posts/:post_id/comments/:id',     to: 'comments#show', as: 'comment'
# get '/posts/:post_id/comments/:id/edit', to: 'comments#edit', as: 'edit_comment'
# patch '/posts/:post_id/comments/:id',   to: 'comments#update'
# delete '/posts/:post_id/comments/:id',  to: 'comments#destroy'

  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


#gets the routes from the resource pages but on multiple lines
 # get '/pages', to: 'pages#index'
 # post '/pages', to: 'pages#create'
 #
 # get '/pages/new', to: 'pages#new', as: 'new_page'
 # get '/pages/:id', to: 'pages#show', as: 'page'
 #
 # get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
 #
 # patch '/pages/:id', to: 'pages#update'
 #  delete '/pages/:id', to: 'pages#destroy'





end
