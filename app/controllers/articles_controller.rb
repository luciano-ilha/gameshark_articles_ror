class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order(:cached_votes_score => :desc)
    @upd_art = Article.all.order(:created_at)
    @art_arr1 = []
    @art_arr2 = []
    @art_arr3 = []
    @art_arr4 = []
    @art_arr5 = []
    @art_arr6 = []
    @upd_art.each do |a|
      if a.category.priority == 1
        @art_arr1 << a
      end
      if a.category.priority == 2
        @art_arr2 << a
      end
      if a.category.priority == 3
        @art_arr3 << a
      end
      if a.category.priority == 4
        @art_arr4 << a
      end
      if a.category.priority == 5
        @art_arr5 << a
      end
      if a.category.priority == 6
        @art_arr6 << a
      end
    end
  end

  def new
    @article = Article.new
  end

  def create
    user = User.find(session[:user_id])
    @article = user.articles.new(article_params)
    if @article.save
      flash[:success] = "Article successfully created"
      redirect_to article_path(@article.id)
    else
      flash[:error] = "Something went wrong"
      render root_path
    end
  end

  def show
    @article = Article.find(params[:id])
  end
  
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
      if @article.update_attributes(article_params)
        flash[:success] = "Article was successfully updated"
        redirect_to article_path(@article.id)
      else
        flash[:error] = "Something went wrong"
        render article_path
      end
  end
  
  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      flash[:success] = 'Article was successfully deleted.'
      redirect_to root_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to root_path
    end
  end

  def upvote
    @article = Article.find(params[:id])
    @article.upvote_from current_user
    redirect_to articles_path
  end

  def downvote
    @article = Article.find(params[:id])
    @article.downvote_from current_user
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image, :category_id)
  end
end
