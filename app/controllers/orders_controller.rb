class OrdersController < ApplicationController
  def index
    WhiplashApi::Base.testing!
    @orders = WhiplashApi::Order.all
  end
end
