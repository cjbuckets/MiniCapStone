class ItemsController < ApplicationController
  def index
    @items = Item.all  
  end

  def new
    
  end

  def create
    @item = Item.create(
      product:      params[:product],
      description:  params[:description],
      price:        params[:price]
      )

    flash[:success] = "Pill Created"
    # render 'show.html.erb'
    redirect_to "/"
  end  

  def show
    @item = Item.find_by(id: params[:id])
  end

  def edit
    @item = Item.find_by(id: params[:id])
  end

  def update
    @item = Item.find_by(id: params[:id])

    @item.update(
      product:      params[:product],
      description:  params[:description],
      price:        params[:price]
      )

    flash[:success] = "Pill Updated"
    # render 'show.html.erb'
    redirect_to "/"
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy

    flash[:yo!] = "Pill gone sucka!"
    # render 'show.html.erb'
    redirect_to "/" 
  end
end
