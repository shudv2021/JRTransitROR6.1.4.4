class TransitsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_transit, only: [:edit, :update, :destory]
  
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
    
  end
  
  def calk
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