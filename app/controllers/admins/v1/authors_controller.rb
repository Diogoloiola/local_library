module Admins
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
          render :show, status: :created
        else
          render json: @author.errors, status: :unprocessable_entity
        end
      end

      def update
        if @author.update(author_params)
          render :show, status: :ok
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
        params.require(:author).permit(:name, :date_of_death, :date_of_birth)
      end
    end
  end
end
