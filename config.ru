# config.ru
require 'faye'
require 'sinatra'
require 'haml'
require './app'

use Faye::RackAdapter, :mount      => '/faye',
                       :timeout    => 25

run Sinatra::Application
