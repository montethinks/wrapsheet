$:.unshift(File.expand_path '../lib', __FILE__)
require 'wrapsheet/version'

Gem::Specification.new do |spec|
  spec.name = 'wrapsheet'
  spec.version = Wrapsheet::VERSION
  spec.authors = ['Monte Williams']
  spec.email = ['monte.williams@gmail.com']
  spec.summary = %q[Make your gsheet life easier]
  spec.description = %q[Google Sheet ruby client has a bad rap. Let's make it better.]
  spec.homepage = 'https://github.com/montethinks/wrapsheet'
  spec.license = 'MIT'

  spec.files = Dir["{lib/**/*}"] + %w[LICENSE README.md]

  spec.add_development_dependency 'rspec', '~> 3.8.0'
  spec.add_development_dependency 'pry', '~> 0.12.2'
end
