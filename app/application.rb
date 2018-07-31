class Application

    @@items = []

    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        if req.path.match(/items/)
            search_item = req.params['items']
            print("search_item >> #{search_item}")
            resp.write handle_request(search_item)
            resp.status = 200
        else
            resp.write "Route not found"
            resp.status = 404
        end

        resp.finish
    end

    def handle_request(search_item)
        item = @@items.select{|item| item.name = search_item}
        if item != []
            return "#{item[0].price}"
        else
            return "Item not found"
        end
    end
end
