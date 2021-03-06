module Admins
  module V1
    class LanguagesController < ApiController
      before_action :set_language, only: %i[show update destroy]

      def index
        @languages = Language.all
      end

      def show; end

      def create
        @language = Language.new(language_params)

        if @language.save
          render :show, status: :created
        else
          render json: @language.errors, status: :unprocessable_entity
        end
      end

      def update
        if @language.update(language_params)
          render :show, status: :ok
        else
          render json: @language.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @language.destroy
      end

      private

      def set_language
        @language = Language.find(params[:id])
      end

      def language_params
        params.require(:language).permit(:name)
      end
    end
  end
end
