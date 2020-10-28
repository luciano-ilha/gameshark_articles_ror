module CategoriesHelper
  def cat_order(category)
    category.articles.order(created_at: :desc)
  end
end
