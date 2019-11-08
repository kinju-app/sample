class BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy, :edit]
  before_action :require_user, except: [:index, :show]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def index
  	@books=Book.paginate(page: params[:page], per_page: 5)
  end

  def new
  	@book=Book.new
  end

  def create
  	@book = Book.new(book_params)
    @book.user = current_user
  	@book.save
  	redirect_to books_path
  end
  
  def show	
  end

  def edit	
  end

  def update  	
  	@book.update(book_params)
  	redirect_to books_path
  end

  def destroy  	
  	@book.destroy
  	redirect_to books_path
  end  

  private 
  def book_params
  	params.require(:book).permit(:name, :author, :released_date, category_ids: [])
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def require_same_user
    if @book.user != current_user
      redirect_to books_path
    end
  end

end
