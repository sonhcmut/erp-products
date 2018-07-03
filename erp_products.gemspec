$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "erp/products/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "erp_products"
  s.version     = Erp::Products::VERSION
  s.authors     = ["Son Nguyen"]
  s.email       = ["1633645@hcmut.edu.vn"]
  s.homepage    = "http://hcmut.edu.vn/"
  s.summary     = "Products features of Erp System."
  s.description = "Products features of Erp System."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "erp_core"
  s.add_dependency "deface"
end
