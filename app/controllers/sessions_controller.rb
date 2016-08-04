class SessionsController < ApplicationController
  # def create
  # auth_hash = 'Token' + request.env['omniauth.auth']['credentials']['token'] + 'Secret: ' + request.env['omniauth.auth']['credentials']['secret']
  #
  #   render :text => auth_hash
  # end

  # def create
  # WhiplashApi::Base.testing!
  # WhiplashApi::Base.api_key = request.env['omniauth.auth']['credentials']['token']
  # orders = WhiplashApi::Order.all
  #   render :text => orders
  # end


  def create
    auth_hash = request.env['omniauth.auth']['credentials']
    WhiplashApi::Base.testing!
    WhiplashApi::Base.api_version = 2
    WhiplashApi::Base.api_key = '23447e1eaeddf2d1c4af4c9cf88524af2863cb1f72d500dd9328b34735a3f3b0'
    WhiplashApi::Base.customer_id = 242
    orders = WhiplashApi::Order.all

    render :text => auth_hash
  end



  #
  # def create
  #   auth = request.env['rack.auth']['credentials']
  #   unless @auth = Authorization.find_from_hash(auth)
  #     @auth = Authorization.create_from_hash(auth, current_user)
  #   end
  #   self.current_user = @auth.user
  #   WhiplashApi::Base.testing!
  #   WhiplashApi::Base.api_version = 2
  #   WhiplashApi::Base.api_key = request.env['rack.auth']['credentials']['token']
  #   @orders = WhiplashApi::Order.all
  #   render 'orders/index'
  # end
end
