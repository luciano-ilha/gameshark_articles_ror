class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order(cached_votes_score: :desc)
    category_check
  end

  def new
    @article = Article.new
  end

  def create
    user = User.find(session[:user_id])
    @article = user.articles.new(article_params)
    if @article.save
      flash[:success] = 'Article successfully created'
      redirect_to article_path(@article.id)
    else
      flash[:error] = 'Something went wrong'
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
      flash[:success] = 'Article was successfully updated'
      redirect_to article_path(@article.id)
    else
      flash[:error] = 'Something went wrong'
      render article_path
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      flash[:success] = 'Article was successfully deleted.'
    else
      flash[:error] = 'Something went wrong'
    end
    redirect_to root_path
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
