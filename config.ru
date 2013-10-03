# config.ru
%w{
  faye
  sinatra
  haml
  ./app
}.each { |r| require r }

use Faye::RackAdapter, :mount => '/faye', :timeout    => 25

run Sinatra::Application
