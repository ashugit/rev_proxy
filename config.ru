require 'rack/reverse_proxy'

use Rack::ReverseProxy do
  reverse_proxy_options :preserve_host => true
  reverse_proxy '/', 'www.danielvivar.com/typeless/contacts.html'
end

app = proc do |env|
  [ 200, {'Content-Type' => 'text/plain'}, "b" ]
end

run app
