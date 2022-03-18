class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
  end

  # def edit

  # end

  # def update

  # end

  # def destroy

  # end

  private

  def list_params
    params.require(:list).permit(:name, :image_url, :photo)
  end
end
