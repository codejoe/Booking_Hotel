class Admin::TypesController < ApplicationController
  layout 'admin'
  before_action :set_type, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @types = Type.order(:name).page params[:page]
  end

  def new
    @type = Type.new
  end

  def create
    @type = Type.new(type_params)
    respond_to do |format|
      if @type.save
        format.html {redirect_to(admin_types_path)}
      end
    end
  end

  def edit    
  end

  def update
    respond_to do |format|
      if @type.update_attributes(type_params)
        format.html {redirect_to(admin_types_path)}
      end
    end
  end

  def show
  end

  def destroy
    Type.destroy(@type)
    redirect_to(admin_types_path)
  end

  private
    def set_type
      @type = Type.find(params[:id])
    end

    def type_params
      params.require(:type).permit(:name)
    end
end
