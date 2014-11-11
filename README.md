# MiddlemanTorrent

A Middleman extension to bundle your site as a torrent.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'middleman-torrent'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install middleman-torrent

## Usage

Activate it in Middleman's `config.rb` with defaults

    activate :torrent

or pass it an option

    activate :torrent, file: 'another_torrent_name.torrent'

Every option with default values:

    # A tracker to announce
    tracker: 'udp://tracker.publicbt.com:80'

    # Torrent file name
    file: 'site.torrent'

    # Torrent name and base directory
    name: 'site'

    # Make torrent private
    private: false

You can access this values in your app with `torrent_<option>` (e. g.
`torrent_file`).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/middleman-torrent/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
