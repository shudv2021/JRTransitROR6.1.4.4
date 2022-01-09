class TransitsController < ApplicationController

  def index
    @transits = Transit.all
  end

  def new
    @transit = Transit.new
  end

  def create
    @transit = Transit.new(transit_params)
    if @transit.save
      redirect_to transits_path
    else
    render :new
    end
  end
  
  def edit
    @transit = Transit.find_by(id: params[:id])
  end

  def update
    @transit = Transit.find_by(id: params[:id])
    if @transit.update(transit_params)
      redirect_to transits_path
    else
    render :new
    end
  end
  
private

  def transit_params
    params.require(:transit).permit(:first_name, :second_name, :patronymic, :tel,
                                    :email, :weight, :length, :width, :height, :point_of_departure,
                                    :destination)
  end

end