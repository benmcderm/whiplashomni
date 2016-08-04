class OrdersController < ApplicationController
  def index
    WhiplashApi::Base.testing!
    WhiplashApi::Base.api_version = 2
    WhiplashApi::Base.customer_id = 392
    WhiplashApi::Base.api_key = '34d00bfef509a6dafa7675ca4e7dc9abf65d026b2611df624478b296fbd5fb66'
    orders = WhiplashApi::Order.all

    render :json => orders
  end
end
