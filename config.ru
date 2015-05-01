require 'rack/reverse_proxy'

use Rack::ReverseProxy do
  reverse_proxy(/^\/typeless(\/.*)$/,
    'http://www.danielvivar.com/typeless/contacts.html',
    opts = {:preserve_host => true})
end

app = proc do |env|
  [ 200, {'Content-Type' => 'text/plain'}, "b" ]
end

run app
