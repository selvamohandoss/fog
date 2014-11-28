require "fog/core/model"

module Fog
  module Compute
    class Azure
      class Location < Fog::Model
        identity :name
        attribute :available_services
      end
    end
  end
end
