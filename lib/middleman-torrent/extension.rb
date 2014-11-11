module MiddlemanTorrent
  class Extension < Middleman::Extension
    option :tracker, 'udp://tracker.publicbt.com:80', 'A tracker to announce'
    option :file, 'site.torrent', 'Torrent file name'
    option :name, 'site', 'Torrent name and base directory'
    option :private, false, 'Make torrent private'

    def initialize(app, options_hash={}, &block)
      super
      require 'mktorrent'
    end

    # Expose configuration values
    def after_configuration
      app.set :torrent_tracker, options.tracker
      app.set :torrent_file, options.file
      app.set :torrent_name, options.name
      app.set :torrent_private, options.private
    end

    # Create the torrent after the site is built
    def after_build(builder)
      torrent = Torrent.new options.tracker

      torrent.defaultdir = options.name
      torrent.set_private if options.private

      # Move to build_dir so it's not added to the torrent
      within_build_path do
        app.sitemap.resources.each do |file|
          torrent.add_file file.path
          builder.say_status 'to torrent', file.path
        end

        torrent.write_torrent options.file
      end

      builder.say_status :create, File.join(app.config.build_dir, options.file)
    end

    # Move to build dir for the block
    def within_build_path(&block)
      Dir.chdir app.config.build_dir do
        yield
      end
    end
  end
end
