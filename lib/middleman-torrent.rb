require 'middleman-core'
require 'middleman-torrent/extension'

# Register this extension with middleman
Middleman::Extensions.register(:torrent, MiddlemanTorrent::Extension)
