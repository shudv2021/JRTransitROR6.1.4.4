class TransitsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_transit, only: [:edit, :update, :calculate, :destroy]
  
  def index
    @transits = Transit.where(user_id: current_user.id)
  end

  def new
    @transit = Transit.new
  end

  def create
    @transit = Transit.new(transit_params)
    @transit.user_id = current_user.id
  
    if @transit.save
      redirect_to user_transits_path
    else
    render :new
    end
  end
  
  def edit
  end

  def update
    if @transit.update(transit_params)
      redirect_to user_transits_path(current_user)
    else
    render :new
    end
  end
  
  def destroy
    @transit.destroy
    render user_transits_path(current_user)
  end

  def calculate
    start = @transit.point_of_departure
    finish = @transit.destination
    volume = (@transit.length * @transit.width * @transit.height / 1000000.0).round(2)
    weight = @transit.weight
    calculation = Calculate.new(start, finish, volume, weight)
    @transit.distance = calculation.get_distance || 0
    @transit.price = calculation.get_price || 0
    @transit.save
    redirect_to user_transits_path(current_user)
  end
  
  
private

  def transit_params
    params.require(:transit).permit(:first_name, :second_name, :patronymic, :tel,
                                    :email, :weight, :length, :width, :height, :point_of_departure,
                                    :destination)
  end

  def set_transit
    @transit = Transit.find(params[:id])
  end
  
end