lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kitchen/driver/ec2_version"

Gem::Specification.new do |gem|
  gem.name          = "kitchen-ec2"
  gem.version       = Kitchen::Driver::EC2_VERSION
  gem.license       = "Apache-2.0"
  gem.authors       = ["Fletcher Nichol"]
  gem.email         = ["fnichol@nichol.ca"]
  gem.description   = "A Test Kitchen Driver for Amazon EC2"
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/test-kitchen/kitchen-ec2"

  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR).grep(/LICENSE|^lib/)
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.6"

  gem.add_dependency "test-kitchen", ">= 1.4.1", "< 4"
  gem.add_dependency "aws-sdk-ec2", "~> 1.0"
  gem.add_dependency "retryable", ">= 2.0", "< 4.0" # 4.0 will need to be validated
end
