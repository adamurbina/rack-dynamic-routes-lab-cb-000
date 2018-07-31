class App

    @@items = []

    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        if req.path.match(/items/)
            search_item = req.params['items']
            resp.write handle_request(search_item)
        else
            resp.write "Path not found"
        end
    end

    def handle_request(search_item)
        item = @@items.select{|item| item.name = search_item}
        if item
            return "#{item.price}"
        else
            return "Item not found"
        end
    end
end
