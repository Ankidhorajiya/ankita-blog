class BooksController < ApplicationController

	def index
		@book = Book.all
	end

	def create
		@book = Book.new(params[:book])
		@book= @author.books.create(published_at: Time.now)
		if @book.save
			redirect_to book_path
		else
			render 'new'
		end

	end

	def new
	end

	def destroy
		
		@author.destroy
	end

end
