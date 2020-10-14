class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      flash[:success] = "Article successfully created"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render new_article_path
    end
  end
  
  def update
    @article = Article.find(params[:id])
      if @article.update_attributes(params[:article])
        flash[:success] = "Article was successfully updated"
        redirect_to root_path
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
end
