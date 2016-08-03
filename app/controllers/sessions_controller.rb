class SessionsController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']['credentials']

    render :text => auth_hash.inspect
  end
  # def create
  #   auth = request.env['rack.auth']
  #   unless @auth = Authorization.find_from_hash(auth)
  #     @auth = Authorization.create_from_hash(auth, current_user)
  #   end
  #   self.current_user = @auth.user
  #
  #   render 'orders/index'
  # end
end
