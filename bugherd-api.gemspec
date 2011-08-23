# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bugherd-api}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rafael George"]
  s.date = %q{2011-08-23}
  s.description = %q{BugherdAPI wrapper}
  s.email = %q{george.rafael@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bugherd-api.gemspec",
    "lib/bugherd-api.rb",
    "lib/bugherd.rb",
    "lib/bugherd/.project.rb.swp",
    "lib/bugherd/base.rb",
    "lib/bugherd/project.rb",
    "lib/bugherd/task.rb",
    "lib/bugherd/user.rb",
    "spec/.project_spec.rb.swp",
    "spec/bugherd-api_spec.rb",
    "spec/fixtures/.projects.xml.swp",
    "spec/fixtures/projects.xml",
    "spec/fixtures/projects/.1458.xml.swp",
    "spec/fixtures/projects/1458.xml",
    "spec/fixtures/tasks.xml",
    "spec/fixtures/tasks/4950.xml",
    "spec/fixtures/users.xml",
    "spec/project_spec.rb",
    "spec/spec_helper.rb",
    "spec/task_spec.rb",
    "spec/user_spec.rb"
  ]
  s.homepage = %q{http://github.com/cored/bugherd-api}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{BugherdAPI wrapper}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<activeresource>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<activeresource>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<activeresource>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

