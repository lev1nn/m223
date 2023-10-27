class ProductsController < ApplicationController
    def index 
        @products = Product.all
        @categories = Category.all
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
        
        if @product.save
            ActiveRecord::Base.transaction do
            @category = Category.find(params[:product][:category_id])
            @category.product_count += 1
            @category.save
            end
        
            redirect_to @product
        else
            render 'new'
        end
    end
        
    def destroy
        @product = Product.find(params[:id])
        
        ActiveRecord::Base.transaction do
            @category = Category.find(@product.category_id)
            @category.product_count -= 1
            @category.save
            @product.destroy
        end
        
        redirect_to products_path
    end

    private

    def product_params
        params.require(:product).permit(:name, :description, :price, :category_id)
    end
end
