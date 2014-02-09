DIR = File.join ENV['HOME'], 'web', ENV['RACK_ENV']
$: << DIR
require 'bundler'

Bundler.require(:default, ENV['RACK_ENV'].to_s.to_sym)

require 'seitti'
require 'lab'
require 'paste'
require 'zip_url'
require 'up_file'
require 'myip'
map( 'http://lab.dev.ip.fi/' ) { run Lab::App }
map( 'http://p.dev.ip.fi/' )   { run Paste::App }
map( 'http://z.dev.ip.fi/' )   { run ZipURL::App }
map( 'http://up.dev.ip.fi/')   { run UpFile::App }
map( '/' )                     { run MyIP::App }
