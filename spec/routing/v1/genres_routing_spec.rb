require 'rails_helper'

RSpec.describe V1::GenresController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/v1/genres').to route_to('v1/genres#index', format: :json)
    end

    it 'routes to #show' do
      expect(get: '/v1/genres/1').to route_to('v1/genres#show', id: '1', format: :json)
    end

    it 'routes to #create' do
      expect(post: '/v1/genres').to route_to('v1/genres#create', format: :json)
    end

    it 'routes to #update via PUT' do
      expect(put: '/v1/genres/1').to route_to('v1/genres#update', id: '1', format: :json)
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/v1/genres/1').to route_to('v1/genres#update', id: '1', format: :json)
    end

    it 'routes to #destroy' do
      expect(delete: '/v1/genres/1').to route_to('v1/genres#destroy', id: '1', format: :json)
    end
  end
end
