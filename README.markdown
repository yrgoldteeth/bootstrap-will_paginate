# [Will Paginate][wp] link renderer styles for [Twitter Bootstrap][bs]

Rails Engine that extends [will_paginate][wp] stylings to match the pagination styling conventions 
in Twitter's [Bootstrap][bs] toolkit.

The real hard work done on the renderer initializer was written by [Isaac Bowen][is].

## Installation

Add to your Gemfile:  
    
    gem 'bootstrap-will_paginate'

## Usage

Just like you would in the regular [will_paginate][wp].  If you've got a need to use the default will_paginate stylings,
pass an option like so:

    <%= will_paginate(@things, :renderer => WillPaginate::ActionView::LinkRenderer) %>


Copyright (c) 2012 [Nicholas Fine](http://ndfine.com), [Isaac Bowen](http://isaacbowen.com) released under the MIT license  

[wp]: http://github.com/mislav/will_paginate
[bs]: http://twitter.github.com/bootstrap
[is]: https://gist.github.com/1182136
