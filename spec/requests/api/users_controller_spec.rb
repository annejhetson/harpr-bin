require 'spec_helper'

describe Api::UsersController do
  describe '#show' do
    it 'responses with user information' do
      user = create(:user)
      jsonapi_request(
        :get,
        "/api/users/#{user.id}"
      )

      json = JSON.parse(response.body)['data']
      expect(json['id']).to eq user.id.to_st
      expect(json['type']).to eq 'users'
      expect(json['attributes']['email']).to eq user.email
    end
  end
end

def jsonapi_request(method, resource, params = {}, options = {})
  send(
    method,
    resource,
    params,
    jsonapi_headers.merge(options)
  )
end

def jsonapi_headers
  {
    'HTTP_ACCEPT' => 'application/vnd.api+json',
    'CONTENT_TYPE' => 'application/vnd.api+json',
    'HTTPS' => 'on'
  }
end
