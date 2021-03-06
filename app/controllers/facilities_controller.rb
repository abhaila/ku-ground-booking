class FacilitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @facilities = Facility.all
  end

  def show
    @facility = Facility.find(params[:id])

    start_date = params.fetch(:start_date, Date.today).to_date
    @slots = Slot.where(start_time: start_date.beginning_of_week..start_date.end_of_week)
  end

  def new
    @facility = Facility.new
    @facility.slots.build
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
    params.require(:facility).permit(
      :name, :description, photos: [],
      slots_attributes: [:start_time, :end_time, :cost]
    )
  end
end
