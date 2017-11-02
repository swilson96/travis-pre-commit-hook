require 'travis/yaml'

class TravisLint
  def self.validate filename
    puts "Linting: " + filename
    Travis::Yaml.parse! File.open(filename).read
  end
end
