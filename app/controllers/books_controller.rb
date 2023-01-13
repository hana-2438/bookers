class BooksController < ApplicationController
  def index
    @books = Book.all.order(:id)
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to '/books/:id'
      flash[:notice] = "Book was successfully created."
    else
      render :index
    end

  end

  def show
  end

  def edit
  end




  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end


end



