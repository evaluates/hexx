# Hexx

[![Gem Version](https://img.shields.io/gem/v/hexx.svg?style=flat)][gem]
[![Build Status](https://img.shields.io/travis/nepalez/hexx/master.svg?style=flat)][travis]
[![Dependency Status](https://img.shields.io/gemnasium/nepalez/hexx.svg?style=flat)][gemnasium]
[![Code Climate](https://img.shields.io/codeclimate/github/nepalez/hexx.svg?style=flat)][codeclimate]
[![Coverage](https://img.shields.io/coveralls/nepalez/hexx.svg?style=flat)][coveralls]

[codeclimate]: https://codeclimate.com/github/nepalez/hexx
[coveralls]: https://coveralls.io/r/nepalez/hexx
[gem]: https://rubygems.org/gems/hexx
[gemnasium]: https://gemnasium.com/nepalez/hexx
[travis]: https://travis-ci.org/nepalez/hexx

Collection of scaffolders for projects, that follows the [Hexagonal Architecture].

[Hexagonal Architecture]: http://alistair.cockburn.us/Hexagonal+architecture

## Introduction

**The collection is neither a framework, nor library by itself**. I widely use external libraries, such as [activemodel], [virtus], [rom-rb], [wisper], [service_objects] etc.

The **goal of the gem** is not to add new features but fix their usage as personal reusable standards of coding and testing applications.

I structure applications by types of objects such as entities, services, validators, parsers etc. - exactly in the same way as accepted in [Rails]. When faced to new type of objects, I immediately create a new scaffolder and play with it for some time - until it becomes a standard I will follow afterwards.

To apply [TDD] scaffolders generate specifications in [RSpec]. Both the specification and code are commented - they should be reviewed and uncommented after creation. Scaffolders follow [Yard] style when generate documentation.

You're welcome to propose your own best (or even better) practices to be shared standards.

[IoC container]: http://www.martinfowler.com/articles/injection.html#FormsOfDependencyInjection
[RSpec]: http://rspec.info
[Rails]: http://rubyonrails.org
[TDD]: https://en.wikipedia.org/wiki/Test-driven_development
[Yard]: http://yardoc.org
[activemodel]: https://rubygems.org/gems/activemodel
[rom-rb]: http://rom-rb.org
[service_objects]: https://github.com/nepalez/service_objects
[virtus]: https://github.com/solnic/virtus
[wisper]: https://github.com/krisleech/wisper

## Content

The core module defines:

* `Hexx::Generator` - The base class for the scaffolders, that inherits `Thor::Group` and extends it with additional methods.
* `Hexx::Name` - The commonly used parser that takes a string and decorates it with methods, returning conventional names (for class, method, gemname, file, path etc.).
* `$ hexx` - The CLI command to run scaffolders, defined in submodules (see below).

All the specific scaffolders are created in their own submodules:

* [hexx-domain] - Scaffolder for a new gem with a test suite.
* [hexx-dependencies] - Scaffolder for the [IoC container], dummy app, and a new dependency from an external module.
* [hexx-install] - A base generator for tasks, installing a gem inside a host application.
* [hexx-validators] - Scaffolder for [activemodel] validators.
* [hexx-services] - Scaffolder for [service objects][service_objects].
* [hexx-entities] - Scaffolder for [virtus]-based entities.
* [hexx-values] - Scaffolder for [virtus]-based value objects.

There is one special submodule [hexx-suit] that provides shared dev/test environment.

[hexx-dependencies]: https://github.com/nepalez/hexx-dependencies
[hexx-domain]: https://github.com/nepalez/hexx-domain
[hexx-entities]: https://github.com/nepalez/hexx-entities
[hexx-install]: https://github.com/nepalez/hexx-install
[hexx-services]: https://github.com/nepalez/hexx-services
[hexx-suit]: https://github.com/nepalez/hexx-suit
[hexx-validators]: https://github.com/nepalez/hexx-validators
[hexx-values]: https://github.com/nepalez/hexx-values

## Usage

The usage of scaffolders is pretty standard.

To view all the available options, run from CLI:

```
hexx -h
```

Every scaffolder has its own help, available via `-h` option, for example:

```
hexx service -h
```

For the usage of [hexx-suit] see [the gem's API][hexx-suit API].

[hexx-suit API]: http://www.rubydoc.info/github/nepalez/hexx-suit

## Installation

Add this line to your application's Gemfile:

```ruby
# Gemfile
group :test, :development do
  gem "hexx"
end
```

Then execute:

```
bundle
```

Or add it manually:

```
gem install hexx
```

## Compatibility

Tested under MRI rubies >= 2.1. Rubies under 2.1 aren't supported.

Uses [RSpec] 3.0+ for testing and [hexx-suit] for dev/test tools collection.

## Contributing

* Fork the project.
* Read the [STYLEGUIDE](config/metrics/STYLEGUIDE).
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with Rakefile or version
  (if you want to have your own version, that is fine but bump version
  in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## License

See the [MIT LICENSE](LICENSE).
