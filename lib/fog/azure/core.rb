require 'fog/core'

module Fog
  module Azure
    extend Fog::Provider

    service(:compute, 'Compute')
    #service(:storage, 'azure/storage', 'Storage')
  end
end
