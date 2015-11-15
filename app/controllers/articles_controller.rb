class ArticlesController < ApplicationController
	before_action :get_article_by_id, only: [:edit, :update, :show, :destroy]
	def get_article_by_id
		@article = Article.find(params[:id])
	end


	def new
	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to @article
	end

	def edit
	end

	def update
		if @article.update_attributes(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def show
	end

	def index
		@articles = Article.all
	end

	def destroy
		@article.destroy
		redirect_to articles_path
	end


	private
		def article_params
			params.require(:article).permit(:title, :text)
		end


end
