class BooksController < ApplicationController
  def index
    @books = Book.all
    @user = current_user
    @book = Book.new
  end

  def show
     @book = Book.find(params[:id])
     @user = @book.user
  end

  # def new
  #   @book = Book.new
  # end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    # binding.pry
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render 'books/index'
    end
  end

  def edit
     @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    @book.user_id = current_user.id
    if @book.update(book_params)
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render 'edit'
    end
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to books_path
  end
  
  
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
  def ensure_correct_user
    @book = Book.find(params[:id])
    unless @book.user == current_user
      redirect_to user_path
    end
  end
  
end
