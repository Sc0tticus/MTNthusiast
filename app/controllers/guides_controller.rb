class GuidesController < ApplicationController
  before_action :set_guide, only: [:show, :update, :destroy]

  # GET /guides
  def index
    if params[:about]
      @guides = Guide.where(about: params[:about])
      render json: @guides

    elsif params[:rating]
      @guides = Guide.where(rating: params[:rating])
      render json: @guides

    elsif params[:rate]
      @guides = Guide.where(rate: params[:rate])
      render json: @guides
 
    else
      @guides = Guide.all 
      render json: @guides, include: [:trips]
    end
  end

  # GET /guides/1
  def show
    @guide = Guide.find(params[:id])
    render json: @guide, include: [:clients, :trips]
  end

  # POST /guides
  def create
    @guide = Guide.new(guide_params)

    if @guide.save
      render json: @guide, status: :created, location: @guide
    else
      render json: @guide.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /guides/1
  def update
    if @guide.update(guide_params)
      render json: @guide
    else
      render json: @guide.errors, status: :unprocessable_entity
    end
  end

  # DELETE /guides/1
  def destroy
    @guide.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guide
      @guide = Guide.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def guide_params
      params.require(:guide).permit(:name, :hobby, :expertise, :rating, :instagram, :email, :phone, :rate, :about)
    end
end
