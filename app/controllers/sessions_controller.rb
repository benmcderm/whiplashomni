class SessionsController < ApplicationController

  def create
    auth_hash = request.env['omniauth.auth']
    token = auth_hash['credentials']['token']
    cust_id = auth_hash['extra']['raw_info']['customer_ids'][0]
    WhiplashApi::Base.testing!
    WhiplashApi::Base.api_version = 2
    WhiplashApi::Base.customer_id = cust_id
    WhiplashApi::Base.api_key = token
    @orders = WhiplashApi::Order.all(:params => {:limit => 10})

    render 'orders/index'
  end

end
