class ControlsController < ApplicationController
  def login
      if request.post?
          user=User.find_by(:email=>params[:email],:password=>params[:password])
          if !user.nil?
              session[:user]=user.id
              redirect_to root_url,notice:  "Thank you for signing up"
          else 
              respond_to do |format|
                  format.html{render:new}
                  
        end
    end

    end
    end
end
