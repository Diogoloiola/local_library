module V1
  class AuthorsController < ApplicationController
    before_action :set_author, only: %i[show update destroy]

    def index
      @authors = Author.all
    end

    def show; end

    def create
      @author = Author.new(author_params)

      if @author.save
        render :show, status: :created, location: @author
      else
        render json: @author.errors, status: :unprocessable_entity
      end
    end

    def update
      if @author.update(author_params)
        render :show, status: :ok, location: @author
      else
        render json: @author.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @author.destroy
    end

    private

    def set_author
      @author = Author.find(params[:id])
    end

    def author_params
      params.fetch(:author, {})
    end
  end
end
