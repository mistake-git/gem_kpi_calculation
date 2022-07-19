# KpiCalculation

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/kpi_calculation`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add kpi_calculation

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install kpi_calculation

## Usage

```Ruby
# input
sales_data_object: {performance: 100, interphone: 50, interview: 40, metering: 30, target: 20, contract: 10 }
days: 3
```

```Ruby
# output
[{"name":"performance","count":250,"average":83.3,"percent":null},{"name":"interphone","count":150,"average":50.0,"percent":60.0},{"name":"interview","count":100,"average":33.3,"percent":66.6},{"name":"metering","count":60,"average":20.0,"percent":60.0},{"name":"target","count":30,"average":10.0,"percent":50.0},{"name":"contract","count":10,"average":3.3,"percent":33.3}]
```

```Ruby
# input
sales_data_object:{a: 300, b: 200, c: 40, d: 15, e: 13, f: 9 , g: 6, h: 3, i: 2}
days:5
```

```Ruby
# output
[{"name":"a","count":588,"average":117.6,"percent":null},{"name":"b","count":288,"average":57.6,"percent":48.9},{"name":"c","count":88,"average":17.6,"percent":30.5},{"name":"d","count":48,"average":9.6,"percent":54.5},{"name":"e","count":33,"average":6.6,"percent":68.7},{"name":"f","count":20,"average":4.0,"percent":60.6},{"name":"g","count":11,"average":2.2,"percent":55.0},{"name":"h","count":5,"average":1.0,"percent":45.4},{"name":"i","count":2,"average":0.4,"percent":40.0}]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/kpi_calculation.
