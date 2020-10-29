module CategoriesHelper
  def cat_order(category)
    category.articles.order(created_at: :desc)
  end

  def cat_first_article
    cat_order(@category).first
  end

  def cat_first_image
    cat_order(@category).first.image
  end

  def cat_first_title
    cat_order(@category).first.title
  end

  def cat_first_id
    cat_order(@category).first.id
  end

  def cat_first_text
    cat_order(@category).first.text.truncate(450, separator: ' ')
  end

  def cat_second_article
    cat_order(@category).second
  end

  def cat_second_image
    cat_order(@category).second.image
  end

  def cat_second_title
    cat_order(@category).second.title
  end

  def cat_second_id
    cat_order(@category).second.id
  end

  def cat_second_text
    cat_order(@category).second.text.truncate(450, separator: ' ')
  end

  def cat_third_article
    cat_order(@category).third
  end

  def cat_third_image
    cat_order(@category).third.image
  end

  def cat_third_title
    cat_order(@category).third.title
  end

  def cat_third_id
    cat_order(@category).third.id
  end

  def cat_third_text
    cat_order(@category).third.text.truncate(450, separator: ' ')
  end

  def cat_fourth_article
    cat_order(@category).fourth
  end

  def cat_fourth_image
    cat_order(@category).fourth.image
  end

  def cat_fourth_title
    cat_order(@category).fourth.title
  end

  def cat_fourth_id
    cat_order(@category).fourth.id
  end

  def cat_fourth_text
    cat_order(@category).fourth.text.truncate(450, separator: ' ')
  end
end
