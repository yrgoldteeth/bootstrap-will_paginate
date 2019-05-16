# I haven't used this gem in years and I don't have the time to keep it updated. Happy to give it to someone actively using it.

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

### Size and Alignment of the Pagination Component

You can easily change the pagination components' appearance by passing the correct Bootstrap classes as options:

Sizing(Bootstrap 3 & 4): Add `.pagination-lg` or `.pagination-sm` for additional sizes.

    <%= will_paginate(@things, :renderer => WillPaginate::ActionView::Bootstrap4LinkRenderer, class: 'pagination-lg') %>

Alignment (Bootstrap 4 only): Change the alignment of pagination components using Boostrap 4 Flexbox utilities

    <%= will_paginate(@things, :renderer => WillPaginate::ActionView::Bootstrap4LinkRenderer, class: 'justify-content-center') %>

## Development

### Building changelog

easy way is using `git changelog` from `git-extras` project:

```
brew instal git-extras
```


```
# tag the new version you want (major/minor/patch):
VER=v2.1.0
git tag $VER -m "$VER"

git changelog # will open editor for CHANGELOG.md file

git add CHANGELOG.md

git commit -m "Release $VER"

```

Optionally, the flag `--no-merges` will filter out the merge commits

---

Copyright (c) 2017 [Nicholas Fine](https://twitter.com/yrgoldteeth), [Isaac Bowen](http://isaacbowen.com) released under the MIT license

[wp]: https://github.com/mislav/will_paginate
[bs]: http://getbootstrap.com/
[is]: https://gist.github.com/1182136
