class OrdersController < ApplicationController
  def index
    WhiplashApi::Base.testing!
    WhiplashApi::Base.api_version = 2
    WhiplashApi::Base.api_key = 'c32801b46108ead59633ad62e6c3e3f3c865a4cb8d5dcfd930dd3635ea9da49d'
    orders = WhiplashApi::Order.all

    render :text => orders.inspect
  end
end
