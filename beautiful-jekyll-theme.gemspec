# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "beautiful-jekyll-theme"
  spec.version       = "6.0.1"
  spec.authors       = ["Dean Attali"]
  spec.email         = ["daattali@gmail.com"]

  spec.summary       = "Beautiful Jekyll is a ready-to-use Jekyll theme to help you create an awesome website quickly. Perfect for personal blogs or simple project websites, with a focus on responsive and clean design."
  spec.homepage      = "https://beautifuljekyll.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|LICENSE|README|feed|404|_data|tags|staticman)}i) }

  spec.metadata      = {
    "changelog_uri"     => "https://beautifuljekyll.com/updates/",
    "documentation_uri" => "https://github.com/daattali/beautiful-jekyll#readme"
  }

  spec.add_runtime_dependency "jekyll", ">= 3.9.3"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1"
  spec.add_runtime_dependency "kramdown", "~> 2.3"
  spec.add_runtime_dependency "webrick", "~> 1.8"

  spec.add_development_dependency "bundler", ">= 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "appraisal", "~> 2.5"
  
  ####################
  # Mine, additional
  
  # To resolve the error:
  # Dependency Error: Yikes! It looks like you don't have tzinfo or one of its dependencies installed. In order to use Jekyll as currently configured, you'll need to install this gem. If you've run Jekyll with `bundle exec`, ensure that you have included the tzinfo gem in your Gemfile as well. The full error message from Ruby is: 'cannot load such file -- tzinfo' If you run into trouble, you can find helpful resources at https://jekyllrb.com/help/!
  spec.add_runtime_dependency "tzinfo-data", "~> 1.2021.5" # for timezone
end
