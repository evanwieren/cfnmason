# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cfnmason/version"

Gem::Specification.new do |spec|
  spec.name          = "cfnmason"
  spec.version       = Cfnmason::VERSION
  spec.authors       = ["Eric VanWieren"]
  spec.email         = ["vanwiere@amazon.com"]

  spec.summary       = %q{Tool for manipulating and deploying AWS CloudFormation stacks.}
  spec.description   = %q{cfnmason is a tool designed to make working with CloudFormation templates simpler. Instead of utilizing one large template, a template can be broken into blocks that can then be used in multiple templates with the use of a spec_file. cfnmason also includes tools to deploy stacks and read in inputs from other CloudFormation Stacks}
  spec.homepage      = "https://github.com/evanwieren/cfn_mason"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor'
  spec.add_dependency 'aws-sdk', '~> 2.0.42'

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
