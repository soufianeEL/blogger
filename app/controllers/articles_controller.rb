class ArticlesController < ApplicationController
  include ArticlesHelper

  def index
    @articles = Article.all
  end

  def show
  	@article = Article.find(params[:id])
  end

  def new
  	@article = Article.new
  end

  def create
  	#@article = Article.new
  	#@article.title = params[:article][:title]
    #@article.body = params[:article][:body]
    # OR
    # @article = Article.new(
    #title: params[:article][:title],
    #body: params[:article][:body])
    # OR
    #@article = Article.new(params[:article])

    @article = Article.new(article_params)
    @article.save
    flash.notice = "Article << #{@article.title} >> was successfully created !"

    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    flash.notice = "Article << #{@article.title} >> was successfully updated !"

    redirect_to article_path(@article)
  end

  def destroy
    a = Article.find(params[:id])
    a.destroy
    flash.notice = "Article was successfully deleted !"

    redirect_to articles_path
  end
end
