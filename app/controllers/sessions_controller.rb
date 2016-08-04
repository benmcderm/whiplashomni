class SessionsController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']
    render json: request.env['omniauth.auth']
    WhiplashApi::Base.testing!
    WhiplashApi::Base.api_version = 2
    WhiplashApi::Base.api_key = auth_hash['credentials']['token']
    orders = WhiplashApi::Order.all

    render :text => orders.inspect
    # auth_hash = request.env['omniauth.auth']['credentials']['token']
    # WhiplashApi::Base.testing!
    # WhiplashApi::Base.api_version = 2
    # WhiplashApi::Base.api_key = auth_hash
    #
    # render '/orders'
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
