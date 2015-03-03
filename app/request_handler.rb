class RequestHandler
  include FooRequest

  def get_root
    Response.ok_for 'Your request was GET /'
  end

  def get_css_vendor
    Response.ok_for File.read( "public/css/vendor/#{ @url_params[ :file ]}" )
  end
end