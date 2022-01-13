require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/v1/authors', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Author. As you add validations to Author, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip({ author: { name: 'João', date_of_death: '1990/10/10', date_of_birth: '2022/10/09' } })
  end

  let(:invalid_attributes) do
    skip({author: {}})
  end

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # AuthorsController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) do
    {}
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Author.create! valid_attributes
      get v1_authors_path, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      author = Author.create! valid_attributes
      get author_url(author), as: :json
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Author' do
        expect do
          post v1_authors_path,
               params: { author: valid_attributes }, headers: valid_headers, as: :json
        end.to change(Author, :count).by(1)
      end

      it 'renders a JSON response with the new author' do
        post v1_authors_path,
             params: { author: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Author' do
        expect do
          post v1_authors_path,
               params: { author: invalid_attributes }, as: :json
        end.to change(Author, :count).by(0)
      end

      it 'renders a JSON response with errors for the new author' do
        post v1_authors_path,
             params: { author: invalid_attributes }, headers: valid_headers, as: :json
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

      it 'updates the requested author' do
        author = Author.create! valid_attributes
        patch author_url(author),
              params: { author: new_attributes }, headers: valid_headers, as: :json
        author.reload
        skip('Add assertions for updated state')
      end

      it 'renders a JSON response with the author' do
        author = Author.create! valid_attributes
        patch author_url(author),
              params: { author: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'renders a JSON response with errors for the author' do
        author = Author.create! valid_attributes
        patch author_url(author),
              params: { author: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested author' do
      author = Author.create! valid_attributes
      expect do
        delete author_url(author), headers: valid_headers, as: :json
      end.to change(Author, :count).by(-1)
    end
  end
end