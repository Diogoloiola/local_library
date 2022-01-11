module V1
  class GenresController < ApplicationController
    before_action :set_v1_genre, only: %i[show update destroy]

    def index
      @genres = Genre.all
    end

    def show; end

    def create
      @v1_genre = Genre.new(v1_genre_params)

      if @v1_genre.save
        render :show, status: :created, location: @v1_genre
      else
        render json: @v1_genre.errors, status: :unprocessable_entity
      end
    end

    def update
      if @v1_genre.update(v1_genre_params)
        render :show, status: :ok, location: @v1_genre
      else
        render json: @v1_genre.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @v1_genre.destroy
    end

    private

    def set_v1_genre
      @v1_genre = Genre.find(params[:id])
    end

    def v1_genre_params
      params.fetch(:v1_genre, {})
    end
  end
end
