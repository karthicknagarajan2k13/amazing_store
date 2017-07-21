class ProductController < ApplicationController
  def index
  	#@product = Product.all
  	@cart = session[:cart].compact.uniq if session[:cart].present?
  	@filterrific = initialize_filterrific(
      Product,
      params[:filterrific],
      :select_options => {
        sorted_by: Product.options_for_sorted_by,
        with_product_type_id: ProductType.options_for_select
      }
    ) or return
    @product = @filterrific.find.page(params[:page]).paginate(:page => params[:page], :per_page => 8)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def add_to_cart
  	session[:cart] = [] unless session[:cart]
  	if params[:product_id]
  		session[:cart] << params[:product_id]
  		p session[:cart]
  		redirect_to root_path
  	end
  end

  def remove_to_cart
  	if params[:product_id]
  		p session[:cart]
  		p session[:cart].delete_at(session[:cart].index(params[:product_id]))
  		redirect_to root_path
  	end
  end

end
