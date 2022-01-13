require 'rails_helper'

RSpec.describe V1::AuthorsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/v1/authors').to route_to(format: :json, controller: 'v1/authors', action: 'index')
    end

    it 'routes to #show' do
      expect(get: '/v1/authors/1').to route_to(format: :json, controller: 'v1/authors', action: 'show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/v1/authors').to route_to(format: :json, controller: 'v1/authors', action: 'create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/v1/authors/1').to route_to(format: :json, controller: 'v1/authors', action: 'update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/v1/authors/1').to route_to(format: :json, controller: 'v1/authors', action: 'update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/v1/authors/1').to route_to(format: :json, controller: 'v1/authors', action: 'destroy', id: '1')
    end
  end
end
