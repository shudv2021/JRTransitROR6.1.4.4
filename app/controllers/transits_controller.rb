class TransitsController < ApplicationController

    def index
    @transits = Transit.all
    end
    
end