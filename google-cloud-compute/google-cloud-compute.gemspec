# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/compute/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-compute"
  gem.version       = Google::Cloud::Compute::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "google-cloud-compute is the official client library for the Google Cloud Compute API."
  gem.summary       = "API Client library for the Google Cloud Compute API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-compute-v1", "~> 2.15"
  gem.add_dependency "google-cloud-core", "~> 1.6"
end
