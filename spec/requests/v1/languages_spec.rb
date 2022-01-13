require 'rails_helper'
RSpec.describe '/v1/languages', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Language. As you add validations to Language, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip({name: 'PT-BR'})
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  let(:valid_headers) do
    {}
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Language.create! valid_attributes
      get admins_v1_languages_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      language = Language.create! valid_attributes
      get language_url(language), as: :json
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Language' do
        expect do
          post admins_v1_languages_url,
               params: { language: valid_attributes }, headers: valid_headers, as: :json
        end.to change(Language, :count).by(1)
      end

      it 'renders a JSON response with the new language' do
        post admins_v1_languages_url,
             params: { language: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Language' do
        expect do
          post admins_v1_languages_url,
               params: { language: invalid_attributes }, as: :json
        end.to change(Language, :count).by(0)
      end

      it 'renders a JSON response with errors for the new language' do
        post admins_v1_languages_url,
             params: { language: invalid_attributes }, headers: valid_headers, as: :json
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

      it 'updates the requested language' do
        language = Language.create! valid_attributes
        patch language_url(language),
              params: { language: new_attributes }, headers: valid_headers, as: :json
        language.reload
        skip('Add assertions for updated state')
      end

      it 'renders a JSON response with the language' do
        language = Language.create! valid_attributes
        patch language_url(language),
              params: { language: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end

    context 'with invalid parameters' do
      it 'renders a JSON response with errors for the language' do
        language = Language.create! valid_attributes
        patch language_url(language),
              params: { language: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested language' do
      language = Language.create! valid_attributes
      expect do
        delete language_url(language), headers: valid_headers, as: :json
      end.to change(Language, :count).by(-1)
    end
  end
end
