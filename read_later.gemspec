require 'rubygems'

SPEC = Gem::Specification.new do |s|
  s.name = "read_later"
  s.version = "0.1.0"
  s.author = "Bryan Woods"
  s.email = "bryanwoods4e@gmail.com"
  s.platform = Gem::Platform::RUBY
  s.description = "Read Later buttons for Instapaper."
  s.summary = "Generates a Read Later button from a URL for saving to Instapaper."
  s.rubyforge_project = "read_later"
  s.homepage = "http://github.com/bryanwoods/read_later"
  s.files = Dir.glob("**/*")
  s.require_path = "lib"
  s.has_rdoc = false
end