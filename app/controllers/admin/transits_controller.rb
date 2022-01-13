class Admin::TransitsController < Admin::BaseController

  before_action :authenticate_user!
  
  def index
    @transits = Transit.all
  end

  
  
private


end