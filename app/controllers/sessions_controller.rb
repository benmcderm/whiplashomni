class SessionsController < ApplicationController
  def create
    render json: request.env['omniauth.auth']

    WhiplashApi::Base.testing!
    WhiplashApi::Base.api_version = 2
    WhiplashApi::Base.api_key = request.env['omniauth.auth']['credentials']['token']
    testing = WhiplashApi::Order.all
    
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
