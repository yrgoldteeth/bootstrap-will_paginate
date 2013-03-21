## [Will Paginate][wp] link renderer styles for [Twitter Bootstrap][bs]

Rails Engine that extends [will_paginate][wp] stylings to match the pagination styling conventions 
in Twitter's [Bootstrap][bs] toolkit.

The real hard work done on the renderer initializer was written by [Isaac Bowen][is].

### Installation

Add to your Gemfile:  
    
    gem 'bootstrap-will_paginate'
    
If you need support for Bootstrap 3.0.0, the changes have been [merged][b30] into the
master branch but not released to Rubygems.  Add to your Gemfile like so:

    gem 'bootstrap-will_paginate', :git => 'git://github.com/yrgoldteeth/bootstrap-will_paginate.git'

### Usage

Just like you would in the regular [will_paginate][wp].  If you've got a need to use the default will_paginate stylings,
pass an option like so:

    <%= will_paginate(@things, :renderer => WillPaginate::ActionView::LinkRenderer) %>


Copyright (c) 2012 [Nicholas Fine](http://ndfine.com), [Isaac Bowen](http://isaacbowen.com) released under the MIT license  

[wp]: http://github.com/mislav/will_paginate
[bs]: http://twitter.github.com/bootstrap
[is]: https://gist.github.com/1182136
[b30]: https://github.com/yrgoldteeth/bootstrap-will_paginate/pull/10
