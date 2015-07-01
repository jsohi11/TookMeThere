class SessionsController < ApplicationController

  def create
  	auth = request.env['omniauth.auth']
  # Find an authorization here
	  @authorization = Authorization.find_with_omniauth(auth)

	  if @authorization.nil?
	    # If no authorization was found, create a brand new one here
	    @authorization = Authorization.create_with_omniauth(auth)
	  end

	  if signed_in?
	    if @authorization.user == current_user
	      # User is signed in so they are trying to link an authorization with their
	      # account. But we found the authorization and the user associated with it 
	      # is the current user. So the authorization is already associated with 
	      # this user. So let's display an error message.
	      redirect_to root_url, notice: "Already linked that account!"
	    else
	      # The authorization is not associated with the current_user so lets 
	      # associate the authorization
	      @authorization.user = current_user
	      @authorization.save()
	      redirect_to root_url, notice: "Successfully linked that account!"
    	end
    else
	    if @authorization.user.present?
	      # The identity we found had a user associated with it so let's 
	      # just log them in here
	      self.current_user = @authorization.user
	      redirect_to root_url, notice: "Signed in!"
	    else
	      # No user associated with the identity so we need to create a new one
	      redirect_to about_url, notice: "Please finish registering"
	    end
  	end
  end

  def destroy
  	self.current_user = nil
  	redirect_to root_url, notice: "Signed out!"
  end

end
