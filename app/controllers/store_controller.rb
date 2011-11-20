class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @tiempo2 = Time.now

  end

end
