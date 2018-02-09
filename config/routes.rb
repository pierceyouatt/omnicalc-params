Rails.application.routes.draw do
  get("/flexible/square/:num",{:controller => "calc", :action => "flex_square"})
  get("/flexible/square_root/:num",{:controller => "calc", :action => "flex_square_root"})
  get("/flexible/payment/:apr/:years/:principal",{:controller => "calc", :action => "flex_payment"})
  get("flexible/random/:low_num/:high_num",{:controller => "calc", :action => "random_num"})
  get("/square/new",{:controller => "calc", :action => "new_square_form"})
  get("/square_root/new",{:controller => "calc", :action => "new_root_form"})
  get("/payment/new",{:controller => "calc", :action => "new_payment_form"})
  get("/random/new",{:controller => "calc", :action => "new_random_form"})
  get("/square/results",{:controller => "calc", :action => "square_results"})
  get("/root/results",{:controller => "calc", :action => "root_results"})
  get("/payment/results",{:controller => "calc", :action => "payment_results"})
  get("/random/results",{:controller => "calc", :action => "random_results"})

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
