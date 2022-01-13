require 'rails_helper'

RSpec.describe Admins::V1::LanguagesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: 'admins/v1/languages').to route_to('admins/v1/languages#index', format: :json)
    end

    it 'routes to #show' do
      expect(get: 'admins/v1/languages/1').to route_to('admins/v1/languages#show', id: '1', format: :json)
    end

    it 'routes to #create' do
      expect(post: 'admins/v1/languages').to route_to('admins/v1/languages#create', format: :json)
    end

    it 'routes to #update via PUT' do
      expect(put: 'admins/v1/languages/1').to route_to('admins/v1/languages#update', id: '1', format: :json)
    end

    it 'routes to #update via PATCH' do
      expect(patch: 'admins/v1/languages/1').to route_to('admins/v1/languages#update', id: '1', format: :json)
    end

    it 'routes to #destroy' do
      expect(delete: 'admins/v1/languages/1').to route_to('admins/v1/languages#destroy', id: '1', format: :json)
    end
  end
end
