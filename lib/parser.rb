require 'json'

module Parser

  FILE = "data/entities.json"

  def self.get_data(entity_name)
    hash = to_hash(FILE)
    if hash.keys.include?(entity_name)
      return hash[entity_name]
    else
      raise "No data for entity " + entity_name
    end
  end

  def self.to_hash(json_file)
    json = File.read(json_file)
    return JSON.parse(json)
  end
end
