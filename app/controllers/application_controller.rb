class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?
  # helper_method :priority_check

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def category_check
    @art_cat1 = Article.includes(:category).where('articles.category_id = ?', 1).order(created_at: :desc).first
    @art_cat2 = Article.includes(:category).where('articles.category_id = ?', 2).order(created_at: :desc).first
    @art_cat3 = Article.includes(:category).where('articles.category_id = ?', 3).order(created_at: :desc).first
    @art_cat4 = Article.includes(:category).where('articles.category_id = ?', 4).order(created_at: :desc).first
    @art_cat5 = Article.includes(:category).where('articles.category_id = ?', 5).order(created_at: :desc).first
    @art_cat6 = Article.includes(:category).where('articles.category_id = ?', 6).order(created_at: :desc).first
  end
  # def priority_check
  #   @art_arr1 = []
  #   @art_arr2 = []
  #   @art_arr3 = []
  #   @art_arr4 = []
  #   @art_arr5 = []
  #   @art_arr6 = []
  #   @upd_art.each do |a|
  #     @art_arr1 << a if a.category.priority == 1
  #     @art_arr2 << a if a.category.priority == 2
  #     @art_arr3 << a if a.category.priority == 3
  #     @art_arr4 << a if a.category.priority == 4
  #     @art_arr5 << a if a.category.priority == 5
  #     @art_arr6 << a if a.category.priority == 6
  #   end
  # end
end
