Shindo.tests("Fog::Compute[:azure] | location model", ["azure", "compute"]) do

  service = Fog::Compute[:azure]

  tests("The location model should") do
    location  = service.locations.first
    tests("have the action") do
      test("reload") { location.respond_to? "reload" }
    end
    tests("have attributes") do
      model_attribute_hash = location.attributes
      attributes = [
        :name,
        :available_services
      ]
      tests("The location model should respond to") do
        attributes.each do |attribute|
          test("#{attribute}") { location.respond_to? attribute }
        end
      end
      tests("The attributes hash should have key") do
        attributes.each do |attribute|
          test("#{attribute}") { model_attribute_hash.key? attribute }
        end
      end
    end
  end

end
