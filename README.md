# Milia::Activejob

Milia support for ActiveJob

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'milia_activejob'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install milia_activejob

## Usage

Create a new initialization file active_job.rb in your project with the contents

```ruby
class ActiveJob::Base
  include Milia::ActiveJob
end
```

You will need to restart your rails server for this to take effect.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mort666/milia_activejob.

## Copyright

Copyright (c) 2016 Stephen Kapp. See LICENSE for details.
