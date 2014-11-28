Shindo.tests("Fog::Compute[:azure] | locations request", ["azure", "compute"]) do

  tests("#list_locations") do
    locations = Fog::Compute[:azure].locations

    test "returns a Array" do
      locations.is_a? Array
    end

    test("should return valid location name") do
      locations.first.name.is_a? String
    end

    test("should return records") do
      locations.size >= 1
    end
  end

end
