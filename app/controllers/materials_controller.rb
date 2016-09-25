class MaterialsController < ApplicationController

  def index
    @materials = Material.all
  end

  def new
    @material = Material.new
    @orders = Order.all
  end

  def create
    @material = Material.new materials_params
    if @material.save
      flash[:notice] = "#{materials_params[:clock]} successfully added to materials database"
      redirect_to materials_path
    else
      render 'new'
    end
  end

  private

  def materials_params
    params.require(:material).permit(:clock, :order_ids => [])
  end

end
