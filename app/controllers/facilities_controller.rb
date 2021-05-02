class FacilitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @facilities = Facility.all
  end

  def show
    @facility = Facility.find(params[:id])
  end

  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.new(facility_params)

    if @facility.save
      redirect_to facility_path(@facility)
    else
      render :new
    end
  end

  def edit
    @facility = Facility.find(params[:id])
  end

  def update
    @facility = Facility.find(params[:id])
    if @facility.update(facility_params)
      redirect_to @facility, notice: 'facility was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @facility = Facility.find(params[:id])
    @facility.destroy
    redirect_to facilitys_path, notice: 'facility was successfully deleted'
  end

  private

  def facility_params
    params.require(:facility).permit(:name, :description, photos: [])
  end
end
