class PostsController < ApplicationController

	def index
		@posts = Post.all
		@post = Post.new
	end

	def create 
		post_params = params[:post].permit(:body, :author)
		post = Post.new(post_params)
		if post.save
			flash[:notice] = "Thank you for sharing!"
			redirect_to root_path
		else
			redirect_to root_path

		end
	end 

	def show
	end

end