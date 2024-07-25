Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "index"})

  get("/users", { :controller => "users", :action => "index"})

  get("/insert_user", { :controller => "users", :action => "create"})

  get("/users/:path_username", { :controller => "users", :action => "show"})

  get("/photos", { :controller => "photos", :action => "index"})
  
  get("/photos/:path_id", { :controller => "photos", :action => "show"})
  
  get("/delete_photo/:trash_id", { :controller => "photos", :action => "trash"})

  get("/insert_photo", { :controller => "photos", :action => "create"})

  get("/update_photo/:modify_id", { :controller => "photos", :action => "update"})

end
