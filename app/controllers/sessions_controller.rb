class SessionsController < ApplicationController

  def create
    auth_hash = request.env['omniauth.auth']
    token = auth_hash['credentials']['token']
    cust_id = auth_hash['extra']['raw_info']['customer_ids'][0]
    WhiplashApi::Base.api_version = 2
    WhiplashApi::Base.customer_id = cust_id
    WhiplashApi::Base.api_key = token
    @orders = WhiplashApi::Order.all

    render 'orders/index'
  end
  # 
  # def create
  #   token = '23447e1eaeddf2d1c4af4c9cf88524af2863cb1f72d500dd9328b34735a3f3b0'
  #   cust_id = 242
  #   WhiplashApi::Base.testing!
  #   WhiplashApi::Base.api_version = 2
  #   WhiplashApi::Base.customer_id = cust_id
  #   WhiplashApi::Base.api_key = token
  #   @orders = WhiplashApi::Order.all
  #
  #   render 'orders/index'
  # end

end
