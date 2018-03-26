# frozen_string_literal: true

module ActiveStorage::SetCurrentRequestDetails #:nodoc:
  extend ActiveSupport::Concern

  included do
    before_action do
      ActiveStorage::Current.host = request.base_url
    end
  end
end
