class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @materials = Material.all
  end

  def create
    @order = Order.new order_params
    if @order.save
      # flash[:notice] = "#{materials_params[:clock]} successfully added to materials database"
      redirect_to orders_path
    else
      render 'new'
    end
  end

  private
  def order_params
    params.require(:order).permit(:material_ids => [])
  end
end
