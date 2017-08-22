class Api::ApiController < ApplicationController
  class MimeType
    JSONAPI_MEDIA_TYPE = 'application/vnd.api+json'.freeze
  end

  before_filter :validate_headers

  protected

  def unauthorize!
    render_error(
      :forbidden,
      id: 'unauthorized',
      detail: 'You do not have permission to access that resource',
      title: 'No Permission',
      status: :forbidden
    )
  end

  private

  def validate_headers
    unless request.headers['ACCEPT'] == MimeType::JSONAPI_MEDIA_TYPE &&
      request.headers['CONTENT-TYPE'] == MimeType::JSONAPI_MEDIA_TYPE
      unauthorize!
    end
  end

  def render_error(status, error = {})
    render(
      json: { errors: error },
      status: status
    )
  end
end
