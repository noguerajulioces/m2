# frozen_string_literal: true

# Cities seeds
data = YAML.load_file("#{ Rails.root }/db/data/cities.yml").with_indifferent_access

data[:cities].each do |city|
  City.create(name: city[:name], department: city[:department])
end