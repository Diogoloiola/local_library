require 'rails_helper'

RSpec.describe Admins::V1::AuthorsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: 'admins/v1/authors').to route_to(format: :json, controller: 'admins/v1/authors', action: 'index')
    end

    it 'routes to #show' do
      expect(get: 'admins/v1/authors/1').to route_to(format: :json, controller: 'admins/v1/authors', action: 'show', id: '1')
    end

    it 'routes to #create' do
      expect(post: 'admins/v1/authors').to route_to(format: :json, controller: 'admins/v1/authors', action: 'create')
    end

    it 'routes to #update via PUT' do
      expect(put: 'admins/v1/authors/1').to route_to(format: :json, controller: 'admins/v1/authors', action: 'update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: 'admins/v1/authors/1').to route_to(format: :json, controller: 'admins/v1/authors', action: 'update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: 'admins/v1/authors/1').to route_to(format: :json, controller: 'admins/v1/authors', action: 'destroy', id: '1')
    end
  end
end
