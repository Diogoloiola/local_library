require 'rails_helper'

RSpec.describe Admins::V1::BooksController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: 'admins/v1/books').to route_to('admins/v1/books#index', format: :json)
    end

    it 'routes to #show' do
      expect(get: 'admins/v1/books/1').to route_to('admins/v1/books#show', id: '1', format: :json)
    end

    it 'routes to #create' do
      expect(post: 'admins/v1/books').to route_to('admins/v1/books#create', format: :json)
    end

    it 'routes to #update via PUT' do
      expect(put: 'admins/v1/books/1').to route_to('admins/v1/books#update', id: '1', format: :json)
    end

    it 'routes to #update via PATCH' do
      expect(patch: 'admins/v1/books/1').to route_to('admins/v1/books#update', id: '1', format: :json)
    end

    it 'routes to #destroy' do
      expect(delete: 'admins/v1/books/1').to route_to('admins/v1/books#destroy', id: '1', format: :json)
    end
  end
end
