module MiddlemanTorrent
  class Extension < Middleman::Extension
    option :tracker, 'udp://tracker.publicbt.com:80', 'A tracker to announce'
    option :file, 'site.torrent', 'Torrent file name'

    def initialize(app, options_hash={}, &block)
      super

      app.after_build do |b|
        binding.pry
      end
    end
  end
end
