class FurnituresController < ApplicationController
  before_action :set_furniture, only: [:show, :update, :destroy]

  # GET /furnitures
  def index
    @furnitures = Furniture.all

    render json: @furnitures
  end

  # GET /furnitures/1
  def show
    render json: @furniture
  end

  # POST /furnitures
  def create
    @furniture = Furniture.new(furniture_params)

    if @furniture.save
      render json: @furniture, status: :created, location: @furniture
    else
      render json: @furniture.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /furnitures/1
  def update
    if @furniture.update(furniture_params)
      render json: @furniture
    else
      render json: @furniture.errors, status: :unprocessable_entity
    end
  end

  # DELETE /furnitures/1
  def destroy
    @furniture.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furniture
      @furniture = Furniture.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def furniture_params
      params.fetch(:furniture, {})
    end
end
