require 'rack/reverse_proxy'

use Rack::ReverseProxy do
  reverse_proxy(/^(.*)$/,
    'http://www.danielvivar.com/$1',
    opts = {:preserve_host => true})    
end

app = proc do |env|  
end

run app
