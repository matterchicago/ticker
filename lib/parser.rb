require 'yaml'

module Parser

  FILE = "data/entities.yml"

  def self.get_data(entity_name)
    file = File.read(FILE)
    hash = YAML.load(file)

    if hash.keys.include?(entity_name)
      return hash[entity_name]
    else
      raise "No data for entity " + entity_name
    end
  end
end
