Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  get 'request/new'

  get 'bdetail/index'
get 'request/destroy'

  get 'bdetail/create'
post 'bdetail/create'

  get 'bdetail/show'

get 'request/edit'
get 'request/update'
  get 'bdetail/update'

  get 'bdetail/destroy'


  get 'personal/index'
get 'request/create'
post 'request/create'
post 'request/edit'
  get 'personal/show'

  get 'personal/new'
get 'personal/delete'

  get 'personal/update'

  get 'personal/destroy'
get 'personal/create'
post 'personal/create'
#resources :bdetail do
#	collection do
	
	#post 'bdetail/create'
	#get 'bdetail/new'
#end
#end
resources :request
resources :personal
 get "/personal/:personal_id/bdetail/new", to: "bdetail#new"
#end

root 'personal#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
