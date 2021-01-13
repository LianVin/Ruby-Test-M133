class ChanelsController < ApplicationController
  def index
    @chanels = Chanel.all
  end

  def show
    @chanel = Chanel.find(params[:id])
  end

  def new
    @chanel = Chanel.new
  end

  def create
    @chanel = Chanel.new(chanel_params)
    if @chanel.save
      redirect_to action: "index"
    end
  end
  def chanel_params
    params.require(:chanel).permit(:title)
  end

  def edit
    @chanel = Chanel.find(params[:id])
  end

  def update
    @chanel = Chanel.find(params[:id])
    if @chanel.update_attributes(chanel_params)
      redirect_to action: "index"
    end
  end

  def destroy
    Chanel.find(params[:id]).destroy
    redirect_to action: "index"
  end
end
