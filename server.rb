require 'bundler'
Bundler.require(:default)

class Server < Goliath::API
  def response(env)
    request = Rack::Request.new(env)

    upstream_url = "http:/#{request.fullpath}"
    upstream_request = EventMachine::HttpRequest.new(upstream_url).get

    body = upstream_request.response.sub(
      '<head>',
      %(<head><base href="#{upstream_url}"><script async src="//genius.codes"></script>)
    )

    Rack::Response.new(body)
  end
end
