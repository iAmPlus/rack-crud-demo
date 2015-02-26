class Response
  class << self
    def ok
      Rack::Response.new( '', 200 )
    end

    def ok_for body
      Rack::Response.new( body, 200 )
    end
  end
end