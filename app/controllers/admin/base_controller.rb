class Admin::BaseController < ApplicationController

before_action :authenticate_user!
before_action :admin_required!

private

def admin_required!
  redirect_to root_path, alert: 'You are not admin!' if !current_user.is_a?(Admin)
end

end