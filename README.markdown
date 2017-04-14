## [Will Paginate][wp] link renderer styles for [Twitter Bootstrap 3/4][bs]

Rails Engine that extends [will_paginate][wp] stylings to match the pagination styling conventions
in Twitter's [Bootstrap][bs] toolkit.

The real hard work done on the renderer initializer was written by [Isaac Bowen][is].

### Demo picture

![Demo of boostrap-will_paginate](boostrap-will_paginate.png)

### Installation

Add to your Gemfile:

    gem 'bootstrap-will_paginate'

### Usage

Just like you would in the regular [will_paginate][wp].  If you've got a need to use the default will_paginate stylings,
pass an option like so:

    <%= will_paginate(@things, :renderer => WillPaginate::ActionView::LinkRenderer) %>

To use Bootstrap 4 version:

    <%= will_paginate(@things, :renderer => WillPaginate::ActionView::Bootstrap4LinkRenderer) %>

Copyright (c) 2017 [Nicholas Fine](https://twitter.com/yrgoldteeth), [Isaac Bowen](http://isaacbowen.com) released under the MIT license

[wp]: https://github.com/mislav/will_paginate
[bs]: http://getbootstrap.com/
[is]: https://gist.github.com/1182136
