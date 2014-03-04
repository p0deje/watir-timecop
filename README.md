# watir-timecop

Makes [Timecop](https://github.com/travisjeffery/timecop) compatible with [Watir](https://github.com/watir/watir-webdriver).

The problem is that internally Watir uses `Time.now` when it waits for element presence/absence. Combined with Timecop, waiting gets broken because `Time.now` may always returns the same value. This gem implements custom timer for Watir, which uses `Timeout.timeout` instead.

## Installation

Add this line to your application's Gemfile:

```bash
gem 'watir-timecop'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install watir-timecop
```

## Usage

Just require gem after Watir. That's all!

```ruby
require 'watir-webdriver'
require 'watir-timecop'
```

## Contributing

1. Fork it ( http://github.com/p0deje/watir-timecop/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

Copyright (c) 2014 Alex Rodionov. See LICENSE.txt for details.
