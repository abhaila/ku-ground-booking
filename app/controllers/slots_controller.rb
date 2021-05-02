class SlotsController < ApplicationController
  before_action :set_slot, only: [:show]
  # def index
  #   @slots = Slot.paginate(page: params[:page], per_page: 6).order('sort ASC')
  # end

  # def show
  #   @others = Slot.paginate(page: params[:page], per_page: 4).order('sort ASC')
  # end

  def new
    @slot = Slot.new
  end

  private

  def set_slot
    @slot = Slot.find(params[:id])
  end
end
