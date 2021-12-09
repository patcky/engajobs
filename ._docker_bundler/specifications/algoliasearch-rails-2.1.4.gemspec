# -*- encoding: utf-8 -*-
# stub: algoliasearch-rails 2.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "algoliasearch-rails".freeze
  s.version = "2.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Algolia".freeze]
  s.date = "2021-09-13"
  s.description = "AlgoliaSearch integration to your favorite ORM".freeze
  s.email = "contact@algolia.com".freeze
  s.extra_rdoc_files = ["CHANGELOG.MD".freeze, "LICENSE".freeze, "README.md".freeze]
  s.files = ["CHANGELOG.MD".freeze, "LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://github.com/algolia/algoliasearch-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.32".freeze
  s.summary = "AlgoliaSearch integration to your favorite ORM".freeze

  s.installed_by_version = "3.2.32" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<json>.freeze, [">= 1.5.1"])
    s.add_runtime_dependency(%q<algolia>.freeze, ["< 3.0.0"])
    s.add_development_dependency(%q<will_paginate>.freeze, [">= 2.3.15"])
    s.add_development_dependency(%q<kaminari>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rdoc>.freeze, [">= 0"])
  else
    s.add_dependency(%q<json>.freeze, [">= 1.5.1"])
    s.add_dependency(%q<algolia>.freeze, ["< 3.0.0"])
    s.add_dependency(%q<will_paginate>.freeze, [">= 2.3.15"])
    s.add_dependency(%q<kaminari>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 0"])
  end
end
