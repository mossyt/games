class ProductsController < ApplicationController
   before_action :authenticate_user!
   
   def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end


  def show
    
  end


 
  private
    def product_params
      params.require(:product).permit(:name, :price)
    end
end