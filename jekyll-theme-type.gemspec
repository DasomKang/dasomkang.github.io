# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-type"
  spec.version       = "1.1"
  spec.authors       = ["Rohan Chandra"]
  spec.email         = ["hellorohan@outlook.com"]

  spec.summary       = %q{A free and open-source Jekyll theme. Great for blogs and easy to customize.}
  spec.homepage      = "https://github.com/rohanchandra/type-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|pages|_(includes|layouts|sass)/|(LICENSE|README|search.html)((\.(txt|md|markdown)|$)))}i)

  end

  spec.add_runtime_dependency "jekyll", "~> 3.4"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"

  spec.add_development_dependency "bundler", "~>= 2.2.33"
  spec.add_development_dependency "rake", "~>= 12.3.3"
  spec.add_dependency "rake", ">= 12.3.3" ## 
end
