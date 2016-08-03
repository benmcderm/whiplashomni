class OrdersController < ApplicationController
  def index
    WhiplashApi::Base.testing!
    WhiplashApi::Base.api_key = 'Nedz6qjVyyPqpxKPo1Fm'
    @orders = WhiplashApi::Order.all(:params => {:limit => 10 })
  end
end
