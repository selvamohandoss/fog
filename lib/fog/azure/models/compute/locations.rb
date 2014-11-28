require "fog/core/collection"
require "fog/azure/models/compute/location"

module Fog
  module Compute
    class Azure
      class Locations < Fog::Collection
        model Fog::Compute::Azure::Location

        def all()
          locations = []
          service.list_locations.each do |location|
            hash = {}
            location.instance_variables.each do |var|
              hash[var.to_s.delete("@")] = location.instance_variable_get(var)
            end
            locations << hash
          end
          load(locations)
        end

        def get(identity)
          all.find { |f| f.name == identity }
        rescue Fog::Errors::NotFound
          nil
        end
      end
    end
  end
end
