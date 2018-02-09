class CalcController < ApplicationController
  def flex_square
    @my_num = params.fetch("num").to_i
    @square = @my_num**2
    render("/omni_templates/flex_square_view.html.erb")
  end
  def flex_square_root
    @my_num = params.fetch("num").to_i
    @square_root = @my_num**0.5
    render("/omni_templates/flex_square_root_view.html.erb")
  end
  def flex_payment
    @my_apr = params.fetch("apr").to_f/100
    @my_years = params.fetch("years").to_i
    @my_principal = params.fetch("principal").to_i
    @my_payment = (@my_apr/1200*@my_principal)/(1-((1+@my_apr/1200)**(-12*@my_years)))
    render("/omni_templates/flex_payment_view.html.erb")
  end
  def new_square_form
    render ("/omni_templates/new_square_form_view.html.erb")
  end
  def new_root_form
    render ("/omni_templates/new_root_form_view.html.erb")
  end
  def new_payment_form
    render ("/omni_templates/new_payment_form_view.html.erb")
  end
  def new_random_form
    render ("/omni_templates/new_random_form_view.html.erb")
  end
  def square_results
    @the_num = params.fetch("user_num").to_f
    @the_square = @the_num**2
    render("/omni_templates/square_results_view.html.erb")
  end
  def root_results
    @the_num = params.fetch("user_num").to_f
    @the_root = @the_num**0.5
    render("/omni_templates/root_results_view.html.erb")
  end
  def payment_results
    @my_apr = params.fetch("user_apr").to_f
    @my_years = params.fetch("user_years").to_i
    @my_principal = params.fetch("user_principal").to_f
    @my_payment = (@my_apr/1200*@my_principal)/(1-((1+@my_apr/1200)**(-12*@my_years)))
    render("/omni_templates/payment_results_view.html.erb")
  end
  def random_results
    @low_num = params.fetch("user_min").to_i
    @high_num = params.fetch("user_max").to_i
    @result = rand(@high_num-@low_num)+@low_num
    render("/omni_templates/random_results_view.html.erb")
  end
  def random_num
    @this_min = params.fetch("low_num").to_i
    @this_max = params.fetch("high_num").to_i
    @result = (rand(@this_max - @this_min) + @this_min)
    render("/omni_templates/flex_random_number_view.html.erb")
  end
end
