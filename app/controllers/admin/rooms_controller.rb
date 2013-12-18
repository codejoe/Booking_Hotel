class Admin::RoomsController < ApplicationController
  layout 'admin'
  before_action :set_rooms, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @rooms = Room.order(:number).page params[:page]
    types
  end

  def new
    @room = Room.new
    types
  end

  def create
    @room = Room.new(room_params)
    respond_to do |format|
      if @room.save 
        format.html {redirect_to admin_rooms_path }
      end
   end
  end

  def edit
    types
    statuses
  end

  def show
  end

  def update
    respond_to do |format|
      if @room.update_attributes(room_params)
        format.html {redirect_to admin_rooms_path}
      end
    end
  end

  def destroy
    Room.destroy(@room)
    redirect_to(admin_rooms_path)
  end

  private

    def types
      @types = Type.all
    end

    def statuses
      @statuses = {a: 'Available', n: 'Not Available'}
    end

    def set_rooms
      @room = Room.find(params[:id])
    end

    def room_params
      params.require(:room).permit(:number, :type_id, :status)
    end
end
