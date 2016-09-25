class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new order_params
    if @order.save
      redirect_to orders_path
    else
      render 'new'
    end
  end

  def update
    @order = Order.find(id = params[:id])
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  def edit
    @order = Order.find(id = params[:id])
    @materials = Material.all
    @broadcasters = Broadcaster.all
    @order.attributes = {'material_ids' => []}.merge(params[:order] || {})
  end

  def show
    @order = Order.find(id = params[:id])
  end

  private
  def order_params
    params.require(:order).permit(:number, :material_ids => [], :broadcaster_ids => [])
  end
end
