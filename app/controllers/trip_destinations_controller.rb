class TripDestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit, :update, :destroy]
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @destination = Destination.new
  end

  def create
    @trip = Trip.find_by(slug: params[:trip_id])
    @destination = Destination.find_by(slug: params[:destination][:name])
    @trip.destinations << @destination
    redirect_to @trip
  end

  protected

  def set_trip
    @trip = Trip.find_by(slug: params[:trip_id])
  end

  def set_destination

  end

  private

  def destination_params
    params.require(:destination).permit(:name)
  end
end
