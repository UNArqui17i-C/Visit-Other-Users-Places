class AddOtherPlacesController < ApplicationController
  before_action :set_add_other_place, only: [:show, :update, :destroy]

  # GET /add_other_places
  def index
    @add_other_places = AddOtherPlace.all

    render json: @add_other_places
  end

  # GET /add_other_places/1
  def show
    render json: @add_other_place
  end

  # POST /add_other_places
  def create
    @add_other_place = AddOtherPlace.new(add_other_place_params)

    if @add_other_place.save
      render json: @add_other_place, status: :created, location: @add_other_place
    else
      render json: @add_other_place.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /add_other_places/1
  def update
    if @add_other_place.update(add_other_place_params)
      render json: @add_other_place
    else
      render json: @add_other_place.errors, status: :unprocessable_entity
    end
  end

  # DELETE /add_other_places/1
  def destroy
    @add_other_place.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_other_place
      @add_other_place = AddOtherPlace.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def add_other_place_params
      params.require(:add_other_place).permit(:id_addnew_place)
    end
end
