Gem::Specification.new do |s|
  s.name = "chopper"
  s.version = File.read "VERSION"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matt Parker"]
  s.date = %q{2011-02-23}
  s.description = %q{Chop up a string into paragraphs or tweets}
  s.email = %q{moonmaster9000@gmail.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
 
  s.homepage = %q{http://github.com/moonmaster9000/chopper}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{Turn a single string into an array of strings. Supports paragraphs and tweets.}
  
  s.add_development_dependency(%q<cucumber>, ["~> 0.10.0"])
  s.add_development_dependency("rspec", ["~> 2.4.0"])
end
