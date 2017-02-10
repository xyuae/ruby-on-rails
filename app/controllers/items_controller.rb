class ItemsController < ApplicationController
    def new
    end
    
    def create
        @item = Item.new(item_params)
        
        @item.save
        redirect_to @item
    end
    def show
        @item = Item.find(params[:id])
    end
    
    def index
        @item = Item.all
    end
    private
    def item_params
        params.require(:item).permit(:title, :notes)
    end
end
