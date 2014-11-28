module Fog
  module Compute
    class Azure
      class Real
        def list_locations
          location_svc = ::Azure::BaseManagement::BaseManagementService.new
          location_svc.list_locations
        end
      end

      class Mock
        def list_locations
          location = ::Azure::BaseManagement::Location.new
          location.name = "West US"
          location.available_services = "Compute, Storage, PersistentVMRole, HighMemory"
          [location]
        end
      end
    end
  end
end
