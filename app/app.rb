class App
  class << self
    def call env
      begin
        Request.new( env ).response.finish
      rescue Exception => e
        handle_error e
      end
    end

    def handle_error e
      puts "Error processing request: #{ e.message }"
      puts e.backtrace[0..6]

      Rack::Response.new( 'Error', 500 ).finish
    end
  end
end