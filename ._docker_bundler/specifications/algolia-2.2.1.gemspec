# -*- encoding: utf-8 -*-
# stub: algolia 2.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "algolia".freeze
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/algolia/algoliasearch-client-ruby/issues", "documentation_uri" => "https://www.algolia.com/doc/api-client/getting-started/install/ruby", "source_code_uri" => "https://github.com/algolia/algoliasearch-client-ruby" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Algolia".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-11-12"
  s.description = "A simple Ruby client for the algolia.com REST API".freeze
  s.email = ["support@algolia.com".freeze]
  s.homepage = "https://github.com/algolia/algoliasearch-client-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.32".freeze
  s.summary = "A simple Ruby client for the algolia.com REST API".freeze

  s.installed_by_version = "3.2.32" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["<= 0.82.0"])
    s.add_runtime_dependency(%q<faraday>.freeze, [">= 0.15", "< 2.0"])
    s.add_runtime_dependency(%q<multi_json>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<net-http-persistent>.freeze, [">= 0"])
    s.add_development_dependency(%q<httpclient>.freeze, [">= 0"])
    s.add_development_dependency(%q<m>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest-hooks>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest-proveit>.freeze, [">= 0"])
    s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["<= 0.82.0"])
    s.add_dependency(%q<faraday>.freeze, [">= 0.15", "< 2.0"])
    s.add_dependency(%q<multi_json>.freeze, ["~> 1.0"])
    s.add_dependency(%q<net-http-persistent>.freeze, [">= 0"])
    s.add_dependency(%q<httpclient>.freeze, [">= 0"])
    s.add_dependency(%q<m>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<minitest-hooks>.freeze, [">= 0"])
    s.add_dependency(%q<minitest-proveit>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
  end
end
