class ItemsController < ApplicationController
  def index
    @items = Item.all 
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount_value = params[:discount]
    search_term = params[:search_term]
    category_type = params[:category]

    if category_type
      @items = Category.find_by(name: category_type).items
    end

    if discount_value
      @items = @items.where("price < ?", discount_value)
    end

    if sort_order && sort_attribute
      @items = @items.order(sort_attribute => sort_order)
    elsif sort_attribute
      @items = @items.order(sort_attribute)
    end

    if search_term
      @items = @items.where("product LIKE ? OR description LIKE ? OR price LIKE ?", "%#{search_term}", "%#{search_term}", "%#{search_term}")
    end
    
  end

    def new
      
    end

    def create
      @item = Item.create(
        product:      params[:product],
        description:  params[:description],
        price:        params[:price],
        )

      flash[:success] = "Pill Created"
      # render 'show.html.erb'
      redirect_to "/"
    end  

    def show
      @item = Item.find_by(id: params[:id])
      @tax  = @item.tax
      @total= @item.total
    end

    def edit
      @item = Item.find_by(id: params[:id])
    end

    def update
      @item = Item.find_by(id: params[:id])

      @item.update(
        product:      params[:product],
        description:  params[:description],
        price:        params[:price],
        email:        params[:email] 
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

    def random
      @item = Item.all.sample 

      redirect_to  "/pills/#{item.id}"
    end
  end
