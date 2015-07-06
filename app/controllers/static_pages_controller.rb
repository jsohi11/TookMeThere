class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def dashboard
  	puts YAML::dump(current_user)
  	# render :template => "static_pages/dashboard", :locals => { :user => @current_user }
  end

end
