require 'rails_helper'

RSpec.describe Admins::V1::GenresController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: 'admins/v1/genres').to route_to('admins/v1/genres#index', format: :json)
    end

    it 'routes to #show' do
      expect(get: 'admins/v1/genres/1').to route_to('admins/v1/genres#show', id: '1', format: :json)
    end

    it 'routes to #create' do
      expect(post: 'admins/v1/genres').to route_to('admins/v1/genres#create', format: :json)
    end

    it 'routes to #update via PUT' do
      expect(put: 'admins/v1/genres/1').to route_to('admins/v1/genres#update', id: '1', format: :json)
    end

    it 'routes to #update via PATCH' do
      expect(patch: 'admins/v1/genres/1').to route_to('admins/v1/genres#update', id: '1', format: :json)
    end

    it 'routes to #destroy' do
      expect(delete: 'admins/v1/genres/1').to route_to('admins/v1/genres#destroy', id: '1', format: :json)
    end
  end
end
