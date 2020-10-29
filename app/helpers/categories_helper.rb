module CategoriesHelper
  def cat_order(category)
    category.articles.order(created_at: :desc)
  end

  def first_article
    cat_order(@category).first
  end

  def first_image
    cat_order(@category).first.image
  end

  def first_title
    cat_order(@category).first.title
  end

  def first_id
    cat_order(@category).first.id
  end

  def first_text
    cat_order(@category).first.text.truncate(450, separator: ' ')
  end

  def second_article
    cat_order(@category).second
  end

  def second_image
    cat_order(@category).second.image
  end

  def second_title
    cat_order(@category).second.title
  end

  def second_id
    cat_order(@category).second.id
  end

  def second_text
    cat_order(@category).second.text.truncate(450, separator: ' ')
  end

  def third_article
    cat_order(@category).third
  end

  def third_image
    cat_order(@category).third.image
  end

  def third_title
    cat_order(@category).third.title
  end

  def third_id
    cat_order(@category).third.id
  end

  def third_text
    cat_order(@category).third.text.truncate(450, separator: ' ')
  end

  def fourth_article
    cat_order(@category).fourth
  end

  def fourth_image
    cat_order(@category).fourth.image
  end

  def fourth_title
    cat_order(@category).fourth.title
  end

  def fourth_id
    cat_order(@category).fourth.id
  end

  def fourth_text
    cat_order(@category).fourth.text.truncate(450, separator: ' ')
  end
end
