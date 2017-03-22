# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pagerduty_rest_api/version'

Gem::Specification.new do |spec|
  spec.name          = "pagerduty_rest_api"
  spec.version       = PagerdutyRestApi::VERSION
  spec.authors       = ["Balazs Szerencsi"]
  spec.email         = ["balazs.szerencsi@icloud.com"]

  spec.summary       = 'PagerDuty REST API'
  spec.description   = "Ruby client for PagerDuty's REST API"
  spec.homepage      = 'https://github.com/BlasiusVonSzerencsi/pagerduty_rest_api'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop"
end
