# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bootstrap-will_paginate/version"

Gem::Specification.new do |s|
  s.name        = "bootstrap-will_paginate"
  s.version     = Bootstrap::Willpaginate::VERSION
  s.authors     = ["Nicholas Fine", "Isaac Bowen"]
  s.email       = ["nicholas.fine@gmail.com", "ikebowen@gmail.com"]
  s.homepage    = "http://ndfine.com/2011/12/17/twitter-bootstrap-will-paginate.html"
  s.summary     = %q{Format will_paginate html to match Twitter Bootstrap styling.}
  s.description = %q{Hooks into will_paginate to format the html to match Twitter Bootstrap styling.  Extension code was originally written by Isaac Bowen (https://gist.github.com/1182136).}

  s.rubyforge_project = "bootstrap-will_paginate"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_runtime_dependency "will_paginate"
end
