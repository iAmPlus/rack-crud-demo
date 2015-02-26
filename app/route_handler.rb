class RouteHandler
  include FooRequest
  include CRUDRequest

  def initialize env, params, url_params
    @env = env
    @params = params
    @url_params = url_params
  end

  def get_root
    Rack::Response.new( 'Your request was GET /', 200 )
  end

  def not_found
    Rack::Response.new( '404: There is no route for your request.', 404 )
  end

  def render model, page, data
    content_template = File.read "templates/#{ model }/#{ page }.mustache"
    content = Mustache.render( content_template, { data:data })

    page_template = File.read( 'templates/layout.mustache' )
    Mustache.render page_template, { content:content }
  end
end