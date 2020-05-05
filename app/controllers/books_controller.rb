class BooksController < ApplicationController
  def top
  end

  def new
    @book = Book.new
  end

  def index
    @books = Book.all
    @book = Book.new
    
  end

  def show
  end

  def edit
  end

  

  def update
  end

  def destroy
  end

  def create
    # ストロングパラメーターを使用
     book = Book.new(book_params)
    # DBへ保存する
     book.save
    # トップ画面へリダイレクト
    redirect_to books_path
end
private

def book_params
    params.require(:book).permit(:title, :body)
end

end
