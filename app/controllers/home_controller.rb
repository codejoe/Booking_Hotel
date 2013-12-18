class HomeController < ApplicationController
  def index
    @rooms = Room.order(:number).page params[:page]
    types
  end

  private
    def types
      @types = Type.all 
    end
    
end
