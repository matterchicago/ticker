require 'json'

module Parser

  FILE = "data/companies.json"

  def self.get_data(company_name)
    hash = to_hash(FILE)
    return hash[company_name]
  end

  def self.to_hash(json_file)
    json = File.read(json_file)
    return JSON.parse(json)
  end
end
