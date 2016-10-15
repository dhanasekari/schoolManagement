Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  #get '/' => 'start#index'
  get '/school' => 'school#index'
   post 'school/create' => 'school#create'   
   get 'school/new' => 'school#new'  
   patch  'school/update' => 'school#update'
   get 'school/:id' =>'school#show'
   get 'school/edit/:id' =>'school#edit'
   get 'school/delete/:id' =>'school#delete'
   get 'school/update' =>'school#update'

   get 'school/:id/show_standard' => 'school#show_standard', as: :standard
   get 'standard/:id/section' => 'school#show_section', as: :section
   get 'section/:id/student' => 'school#student',as: :student
   get 'student/:id/exam' => 'school#exam',as: :exam
   get 'exam/:id/result' => 'school#result',as: :result 


   get '/student' => 'student#index'
   post 'student/create' => 'student#create'   
   get 'student/new' => 'student#new'  
   patch  'student/update' => 'student#update'
   get 'student/show/:id' =>'student#show'
   get 'student/edit/:id' =>'student#edit'
   get 'student/delete/:id' =>'student#delete'
   get 'student/update' =>'student#update'
   

   get '/attendance' => 'attendance#index'
   post 'attendance/create' => 'attendance#create'   
   get 'attendance/new' => 'attendance#new'  
   patch  'attendance/update' => 'attendance#update'
   get 'attendance/show/:id' =>'attendance#show'
   get 'attendance/edit/:id' =>'attendance#edit'
   get 'attendance/delete/:id' =>'attendance#delete'
   get 'attendance/update' =>'attendance#update'


   get '/standard' => 'standard#index'
   post 'standard/create' => 'standard#create'   
   get 'standard/new' => 'standard#new'  
   patch  'standard/update' => 'standard#update'
   get 'standard/show/:id' =>'standard#show'
   get 'standard/edit/:id' =>'standard#edit'
   get 'standard/delete/:id' =>'standard#delete'
   get 'standard/update' =>'standard#update'


    get '/section' => 'section#index'
    post 'section/create' => 'section#create'   
    get 'section/new' => 'section#new'  
    patch  'section/update' => 'section#update'
    get 'section/show/:id' =>'section#show'
    get 'section/edit/:id' =>'section#edit'
    get 'section/delete/:id' =>'section#delete'
    get 'section/update' =>'section#update'


    get '/subject' => 'subject#index'
    post 'subject/create' => 'subject#create'   
    get 'subject/new' => 'subject#new'  
    patch  'subject/update' => 'subject#update'
    get 'subject/show/:id' =>'subject#show'
    get 'subject/edit/:id' =>'subject#edit'
    get 'subject/delete/:id' =>'subject#delete'
    get 'subject/update' =>'subject#update'


    get '/teacher' => 'teacher#index'
    post 'teacher/create' => 'teacher#create'   
    get 'teacher/new' => 'teacher#new'  
    patch  'teacher/update' => 'teacher#update'
    get 'teacher/show/:id' =>'teacher#show'
    get 'teacher/edit/:id' =>'teacher#edit'
    get 'teacher/delete/:id' =>'teacher#delete'
    get 'teacher/update' =>'teacher#update'


    get '/exam' => 'exam#index'
    post 'exam/create' => 'exam#create'   
    get 'exam/new' => 'exam#new'  
    patch  'exam/update' => 'exam#update'
    get 'exam/show/:id' =>'exam#show'
    get 'exam/edit/:id' =>'exam#edit'
    get 'exam/delete/:id' =>'exam#delete'
    get 'exam/update' =>'exam#update'


    get '/result' => 'result#index'
    post 'result/create' => 'result#create'   
    get 'result/new' => 'result#new'  
    patch  'result/update' => 'result#update'
    get 'result/show/:id' =>'result#show'
    get 'result/edit/:id' =>'result#edit'
    get 'result/delete/:id' =>'result#delete'
    get 'result/update' =>'result#update'


    get '/student/show/:id/attendance' => 'attendance#student_attendance'
   
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
