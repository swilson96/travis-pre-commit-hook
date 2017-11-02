require 'travis/yaml'

class TravisLint
  def self.validate
    Travis::Yaml.parse! "er: wat"
    "Hello brief world, and now goodbye"
  end
end
