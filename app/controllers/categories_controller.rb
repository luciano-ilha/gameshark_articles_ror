# frozen_string_literal: true

# rubocop:disable Style/Documentation

class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
  end
end
# rubocop:enable Style/Documentation
