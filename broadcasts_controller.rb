class BroadcastsController < ApplicationController
  def index
    @broadcasts = Broadcast.all
  end

  def show
    @broadcast = Broadcast.find(params[:id])
  end

  def new
    @broadcast = Broadcast.new
    @chanels = Chanel.all
  end

  def create
    @broadcast = Broadcast.new(broadcast_params)
    if @broadcast.save
      redirect_to action: "index"
    else
      @chanels = Chanel.all
      render action: "new"
    end
  end
  def broadcast_params
    params.require(:broadcast).permit(:name, :duration, :chanel_id)
  end

  def edit
    @broadcast = Broadcast.find(params[:id])
    @chanels = Chanel.all
  end

  def update
    @broadcast = Broadcast.find(params[:id])
    if @broadcast.update_attributes(broadcast_params)
      redirect_to action: "index"
    else
      @chanels = Chanel.all
      render action: "edit"
    end
  end

  def destroy
    Broadcast.find(params[:id]).destroy
    redirect_to action: "index"
  end
end
