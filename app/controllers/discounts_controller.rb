class DiscountsController < ApplicationController
  before_action :set_discount, only: [:show, :edit, :update, :destroy]

  # GET /discounts
  # GET /discounts.json
  def index
    @discounts = Discount.all
  end

  # GET /discounts/1
  # GET /discounts/1.json
  def show
  end

  # GET /discounts/new
  def new
  end

  # GET /discounts/1/edit
  def edit
  end

  # POST /discounts
  # POST /discounts.json
  def create
  end

  # PATCH/PUT /discounts/1
  # PATCH/PUT /discounts/1.json
  def update
  end

  # DELETE /discounts/1
  # DELETE /discounts/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discount
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discount_params
    end
end
