require 'rails_helper'
RSpec.describe '/v1/books', type: :request do

  let(:author) { create(:author) }
  let(:genre) { create(:genre) }
  let(:language) { create(:language) }

  let(:valid_attributes) do
    skip({ title: 'Harry Potter',
           summary: 'isso é um resumo',
           ISBN: 1,
           author_id: author.id,
           language_id: language.id,
           genre_id: genre.id })
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  let(:valid_headers) do
    {}
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Book.create! valid_attributes
      get admins_v1_books_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      book = Book.create! valid_attributes
      get book_url(book), as: :json
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Book' do
        expect do
          post admins_v1_books_url,
               params: { book: valid_attributes }, headers: valid_headers, as: :json
        end.to change(Book, :count).by(1)
      end

      it 'renders a JSON response with the new book' do
        post admins_v1_books_url,
             params: {book: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Book' do
        expect do
          post admins_v1_books_url,
               params: { book: invalid_attributes }, as: :json
        end.to change(Book, :count).by(0)
      end

      it 'renders a JSON response with errors for the new book' do
        post admins_v1_books_url,
             params: { book: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested book' do
        book = Book.create! valid_attributes
        patch book_url(book),
              params: { book: new_attributes }, headers: valid_headers, as: :json
        book.reload
        skip('Add assertions for updated state')
      end

      it 'renders a JSON response with the book' do
        book = Book.create! valid_attributes
        patch book_url(book),
              params: { book: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'renders a JSON response with errors for the book' do
        book = Book.create! valid_attributes
        patch book_url(book),
              params: { book: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested book' do
      book = Book.create! valid_attributes
      expect do
        delete book_url(book), headers: valid_headers, as: :json
      end.to change(Book, :count).by(-1)
    end
  end
end
