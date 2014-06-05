Rails.application.routes.draw do
  root 'transportation_enrollments#new'

  get('/transportation_enrollment', { :controller => 'transportation_enrollments', :action => 'new' })

  # Routes for the Special_education_application resource:
  # CREATE

  get('/special_education_applications/new', { :controller => 'special_education_applications', :action => 'new' })
  get('/create_special_education_application', { :controller => 'special_education_applications', :action => 'create' })

  # READ
  get('/special_education_applications', { :controller => 'special_education_applications', :action => 'index' })
  get('/special_education_applications/:id', { :controller => 'special_education_applications', :action => 'show' })

  # UPDATE
  get('/special_education_applications/:id/edit', { :controller => 'special_education_applications', :action => 'edit' })
  get('/update_special_education_application/:id', { :controller => 'special_education_applications', :action => 'update' })

  # DELETE
  get('/delete_special_education_application/:id', { :controller => 'special_education_applications', :action => 'destroy' })
  #------------------------------

  # Routes for the Safety_hazard_application resource:
  # CREATE
  get('/safety_hazard_applications/new', { :controller => 'safety_hazard_applications', :action => 'new' })
  get('/create_safety_hazard_application', { :controller => 'safety_hazard_applications', :action => 'create' })

  # READ
  get('/safety_hazard_applications', { :controller => 'safety_hazard_applications', :action => 'index' })
  get('/safety_hazard_applications/:id', { :controller => 'safety_hazard_applications', :action => 'show' })

  # UPDATE
  get('/safety_hazard_applications/:id/edit', { :controller => 'safety_hazard_applications', :action => 'edit' })
  get('/update_safety_hazard_application/:id', { :controller => 'safety_hazard_applications', :action => 'update' })

  # DELETE
  get('/delete_safety_hazard_application/:id', { :controller => 'safety_hazard_applications', :action => 'destroy' })
  #------------------------------

  # Routes for the Sibling_application resource:
  # CREATE
  get('/sibling_applications/new', { :controller => 'sibling_applications', :action => 'new' })
  get('/create_sibling_application', { :controller => 'sibling_applications', :action => 'create' })

  # READ
  get('/sibling_applications', { :controller => 'sibling_applications', :action => 'index' })
  get('/sibling_applications/:id', { :controller => 'sibling_applications', :action => 'show' })

  # UPDATE
  get('/sibling_applications/:id/edit', { :controller => 'sibling_applications', :action => 'edit' })
  get('/update_sibling_application/:id', { :controller => 'sibling_applications', :action => 'update' })

  # DELETE
  get('/delete_sibling_application/:id', { :controller => 'sibling_applications', :action => 'destroy' })
  #------------------------------

  # Routes for the Park_program_application resource:
  # CREATE
  get('/park_program_applications/new', { :controller => 'park_program_applications', :action => 'new' })
  get('/create_park_program_application', { :controller => 'park_program_applications', :action => 'create' })

  # READ
  get('/park_program_applications', { :controller => 'park_program_applications', :action => 'index' })
  get('/park_program_applications/:id', { :controller => 'park_program_applications', :action => 'show' })

  # UPDATE
  get('/park_program_applications/:id/edit', { :controller => 'park_program_applications', :action => 'edit' })
  get('/update_park_program_application/:id', { :controller => 'park_program_applications', :action => 'update' })

  # DELETE
  get('/delete_park_program_application/:id', { :controller => 'park_program_applications', :action => 'destroy' })
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
