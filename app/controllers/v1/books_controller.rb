module V1
  class BooksController < ApplicationController
    before_action :set_book, only: %i[show update destroy]

    def index
      @books = Book.all
    end

    def show; end

    def create
      @book = Book.new(book_params)

      if @book.save
        render :show, status: :created
      else
        render json: @book.errors, status: :unprocessable_entity
      end
    end

    def update
      if @book.update(book_params)
        render :show, status: :ok
      else
        render json: @book.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @book.destroy
    end

    private

    def set_book
      @book = Book.find(params[:id])
    rescue StandardError => e
      render json: { messgae: e.message }
    end

    def book_params
      params.require(:book).permit(:title, :summary, :ISBN, :author_id, :language_id, :genre_id)
    end
  end
end
