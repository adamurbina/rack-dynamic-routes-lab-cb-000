class App
    
    @@items = []
    
    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        
    end

    def handle_request(item)
        if item
            
        end
    end
end