# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/gsuite_add_ons/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-gsuite_add_ons"
  gem.version       = Google::Cloud::GSuiteAddOns::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Add-ons are customized applications that integrate with Google Workspace productivity applications."
  gem.summary       = "API Client library for the Google Workspace Add-ons API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-gsuite_add_ons-v1", ">= 0.5", "< 2.a"
end
