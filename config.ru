require "roda"
require "pry"

class App < Roda
  plugin :cookies
  route do |r|
    r.get("") do
      cookie_name = request.GET["name"]
      response.set_cookie(cookie_name, "bar")
      "cookie name = #{cookie_name} \n"
    end
  end
end

run App.freeze.app
