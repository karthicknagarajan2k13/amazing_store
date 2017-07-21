class ProductController < ApplicationController
  def index
  	#@product = Product.all
  	@filterrific = initialize_filterrific(
      Product,
      params[:filterrific],
      :select_options => {
        sorted_by: Product.options_for_sorted_by,
        with_product_type_id: ProductType.options_for_select
      }
    ) or return
    @product = @filterrific.find.page(params[:page])

    respond_to do |format|
      format.html
      format.js
    end
  end
end
