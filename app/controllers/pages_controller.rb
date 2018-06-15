# frozen_string_literal: true

class PagesController < ApplicationController
  def home; end

  def register; end

  def about; end

  def index_categories
    @categories = Category.all
  end

  def create_category
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_path, notice: 'New Category Created!' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def category_params
    params.require(:category).permit(:name)
  end

end
