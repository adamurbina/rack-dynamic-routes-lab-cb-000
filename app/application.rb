class App

    @@items = []

    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)


    end

    def handle_request(item)
        @@items.select{|item| item.name = item}
        if @@items.collect.include?(item)
            
        end
    end
end
