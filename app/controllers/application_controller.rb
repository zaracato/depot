class ApplicationController < ActionController::Base
 before_filter :authorize
 # protect_from_forgery

 private
   def current_cart
      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
    session[:cart_id] = cart.id
    cart
   end

  protected
  def authorize
     unless User.find_by_id(session[:user_id])
       if User.count.zero?
         if not((request.path_parameters[:action]=="new" or  request.path_parameters[:action]=="create" )and request.path_parameters[:controller]=="users")
           redirect_to(:controller => "users", :action => "new")
         end
       else

          redirect_to login_url, notice: "please log in"
       end

     end
  end
end
