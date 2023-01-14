class BooksController < ApplicationController
  def index
    @books = Book.all.order(:id)
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
      flash[:notice] = "Book was successfully created."
    else
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id)
      flash[:notice] = "Book was successfully updated."
    else
      render :edit
    end
  end



  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end



