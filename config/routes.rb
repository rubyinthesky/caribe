Rails.application.routes.draw do
           #     Prefix Verb   URI Pattern                                                                              Controller#Action
          #   sessions_new GET    /sessions/new(.:format)                                                                  sessions#new
         # sessions_create GET    /sessions/create(.:format)                                                               sessions#create
        # sessions_destroy GET    /sessions/destroy(.:format)                                                              sessions#destroy
          #       usuarios GET    /usuarios(.:format)                                                                      usuarios#index
         #                 POST   /usuarios(.:format)                                                                      usuarios#create
        #      new_usuario GET    /usuarios/new(.:format)                                                                  usuarios#new
       #      edit_usuario GET    /usuarios/:id/edit(.:format)                                                             usuarios#edit
               #   usuario GET    /usuarios/:id(.:format)                                                                  usuarios#show
              #            PATCH  /usuarios/:id(.:format)                                                                  usuarios#update
             #             PUT    /usuarios/:id(.:format)                                                                  usuarios#update
            #              DELETE /usuarios/:id(.:format)                                                                  usuarios#destroy
           #        hashts GET    /hashts(.:format)                                                                        hashts#index
          #                POST   /hashts(.:format)                                                                        hashts#create
         #       new_hasht GET    /hashts/new(.:format)                                                                    hashts#new
        #       edit_hasht GET    /hashts/:id/edit(.:format)                                                               hashts#edit
               #     hasht GET    /hashts/:id(.:format)                                                                    hashts#show
              #            PATCH  /hashts/:id(.:format)                                                                    hashts#update
             #             PUT    /hashts/:id(.:format)                                                                    hashts#update
            #              DELETE /hashts/:id(.:format)                                                                    hashts#destroy
           #     categoria GET    /categoria(.:format)                                                                     categoria#index
          #                POST   /categoria(.:format)                                                                     categoria#create
         #  new_categorium GET    /categoria/new(.:format)                                                                 categoria#new
        #  edit_categorium GET    /categoria/:id/edit(.:format)                                                            categoria#edit
       #        categorium GET    /categoria/:id(.:format)                                                                 categoria#show
      #                    PATCH  /categoria/:id(.:format)                                                                 categoria#update
     #                     PUT    /categoria/:id(.:format)                                                                 categoria#update
    #                      DELETE /categoria/:id(.:format)                                                                 categoria#destroy
   #                 posts GET    /posts(.:format)                                                                         posts#index
  #                        POST   /posts(.:format)                                                                         posts#create
 #                new_post GET    /posts/new(.:format)                                                                     posts#new
#                edit_post GET    /posts/:id/edit(.:format)                                                                posts#edit
              #       post GET    /posts/:id(.:format)                                                                     posts#show
              #            PATCH  /posts/:id(.:format)                                                                     posts#update
              #            PUT    /posts/:id(.:format)                                                                     posts#update
             #             DELETE /posts/:id(.:format)                                                                     posts#destroy
            #              GET    /usuarios(.:format)                                                                      usuarios#index
           #               POST   /usuarios(.:format)                                                                      usuarios#create
          #                GET    /usuarios/new(.:format)                                                                  usuarios#new
         #                 GET    /usuarios/:id/edit(.:format)                                                             usuarios#edit
       ##                   GET    /usuarios/:id(.:format)                                                                  usuarios#show
      #                    PATCH  /usuarios/:id(.:format)                                                                  usuarios#update
     #                     PUT    /usuarios/:id(.:format)                                                                  usuarios#update
    #                      DELETE /usuarios/:id(.:format)                                                                  usuarios#destroy
   #              sessions POST   /sessions(.:format)                                                                      sessions#create
  #            new_session GET    /sessions/new(.:format)                                                                  sessions#new
 #                 session DELETE /sessions/:id(.:format)                                                                  sessions#destroy
#                   signup GET    /signup(.:format)                                                                        usuarios#new
#                    login GET    /login(.:format)                                                                         sessions#new
#                   logout GET    /logout(.:format)                                                                        sessions#destroy
#                     root GET    /                                                                                        landing#index
#
  	get 'sessions/new'
  	get 'sessions/create'
  	get 'sessions/destroy'
  	resources :usuarios
	#get '/losamo', to: 'login#index'
  	
  	resources :hashts
  	resources :categoria
  	resources :posts
  	resources :usuarios

	resources :sessions, only: [:new, :create, :destroy]
	get 'signup', to: 'usuarios#new', as: 'signup'
  	get 'login', to: 'sessions#new', as: 'login'
  	get 'logout', to: 'sessions#destroy', as: 'logout'

  	root 'landing#index'
  	
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end