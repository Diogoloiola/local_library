module V1
  class GenresController < ApplicationController
    before_action :set_genre, only: %i[show update destroy]

    def index
      @genres = Genre.all
    end

    def show; end

    def create
      @genre = Genre.new(genre_params)

      if @genre.save
        render :show, status: :created
      else
        render json: @genre.errors, status: :unprocessable_entity
      end
    end

    def update
      if @genre.update(genre_params)
        render :show, status: :ok
      else
        render json: @genre.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @genre.destroy
    end

    private

    def set_genre
      @genre = Genre.find(params[:id])
    end

    def genre_params
      params.require(:genre).permit(:name)
    end
  end
end
