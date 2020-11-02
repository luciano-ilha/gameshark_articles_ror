module ArticlesHelper
  def art_main_img
    @articles.first.image
  end

  def art_main_title
    @articles.first.title
  end

  def art_main_id
    @articles.first.id
  end

  def art_main_text
    @articles.first.text.truncate(250, separator: ' ')
  end

  def art_cat1_img
    @art_cat1.image
  end

  def art_cat1_name
    @art_cat1.category.name
  end

  def art_cat1_id
    @art_cat1.id
  end

  def art_cat1_title
    @art_cat1.title
  end

  def art_cat2_img
    @art_cat2.image
  end

  def art_cat2_name
    @art_cat2.category.name
  end

  def art_cat2_id
    @art_cat2.id
  end

  def art_cat2_title
    @art_cat2.title
  end

  def art_cat3_img
    @art_cat3.image
  end

  def art_cat3_name
    @art_cat3.category.name
  end

  def art_cat3_id
    @art_cat3.id
  end

  def art_cat3_title
    @art_cat3.title
  end

  def art_cat4_img
    @art_cat4.image
  end

  def art_cat4_name
    @art_cat4.category.name
  end

  def art_cat4_id
    @art_cat4.id
  end

  def art_cat4_title
    @art_cat4.title
  end

  def art_cat5_img
    @art_cat5.image
  end

  def art_cat5_name
    @art_cat5.category.name
  end

  def art_cat5_id
    @art_cat5.id
  end

  def art_cat5_title
    @art_cat5.title
  end

  def art_cat6_img
    @art_cat6.image
  end

  def art_cat6_name
    @art_cat6.category.name
  end

  def art_cat6_id
    @art_cat6.id
  end

  def art_cat6_title
    @art_cat6.title
  end
end
