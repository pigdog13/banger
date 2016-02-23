#Contains all of the code for any page inside /pages
class PagesController < ApplicationController
  #Back-end code for pages/index
  def index
  end

#Back-end code for pages/home
  def home
  end

#Back-end code for pages/profile
    def profile
    # grab the username from the URL as :id
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else 
      # redirect to 404 (root for now)
      redirect_to root_path, :notice=> "User not found!" 
    end
    
    end

#Back-end code for pages/explore
  def explore
  end
end
