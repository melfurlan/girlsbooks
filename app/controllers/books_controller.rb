class BooksController < ApplicationController
	def new 
		@book = Book.new 
	end

	def create
		book_params = params.require(:book).permit(:title, :author, :publisher, :year)
		@book = Book.new book_params
		
		if @book.save 

			redirect_to new_book_path

		end	
	end		

	def index
		@books = Book.all
	end		
		
end