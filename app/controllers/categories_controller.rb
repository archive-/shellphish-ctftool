class CategoriesController < ApplicationController
  def update
    @category = Category.find(params[:id])
    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.json { respond_with_bip(@category) }
      else
        format.json { respond_with_bip(@category) }
      end
    end
  end
end
