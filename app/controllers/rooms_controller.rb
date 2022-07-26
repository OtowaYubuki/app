class RoomsController < ApplicationController
  def index #登録済み部屋一覧？
    @rooms = Room.all
  end

  def new
    @rooms = Room.new
  end

  def create
    @rooms = Room.new(params.permit(:name,:introduction,:price,:adress))
     if @rooms.save
      flash[:notice] = "部屋を登録しました"
      redirect_to :rooms
     else
      render "new"
     end
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
