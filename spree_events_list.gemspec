Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_events_list'
  s.version     = '0.50.0'
  s.summary     = 'Administrable list of events'
  s.description = ''

  s.author            = 'Christopher Maujean'
  s.email             = 'cmaujean@gmail.com'
  
  # s.rubyforge_project = 'actionmailer'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

end
