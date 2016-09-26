class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @order.order_lines.new
  end

  def create
    @order = Order.new order_params
    if @order.save
      @order.discount = Discount.create(order_id: @order.id, :discount => Discount.effective_cost(@order))
      redirect_to orders_path
    else
      render 'new'
    end
  end

  def update
    @order = Order.find(params[:id])
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
    @order.discount.update(:discount => Discount.effective_cost(@order))
  end

  def show
    @order = Order.find(id = params[:id])
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
    end
  end

  private
  def order_params
    params.require(:order).permit(:id, :number, order_lines_attributes: [:product_id, :quantity], discount_attributes: [:id, :discount])
  end
end
