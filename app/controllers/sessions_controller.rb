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
  #
  # def create
  #   @auth = request.env['omniauth.auth']['credentials']
  # end


  def create
    auth_hash = request.env['omniauth.auth']
    WhiplashApi::Base.testing!
    WhiplashApi::Base.api_version = 2
    WhiplashApi::Base.customer_id = 242
    WhiplashApi::Base.api_key = auth_hash['credentials']['token']
    WhiplashApi::Order.all

    render :text => "workd"
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
