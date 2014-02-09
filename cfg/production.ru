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
map( 'http://lab.ip.fi/' ) { run Lab::App }
map( 'http://p.ip.fi/' )   { run Paste::App }
map( 'http://z.ip.fi/' )   { run ZipURL::App }
map( 'http://up.ip.fi/')   { run UpFile::App }
map( '/' )                 { run MyIP::App }
