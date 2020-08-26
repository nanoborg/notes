Sinatra is an open source web app library and DSL (domain specific library)- framework.

It's an alternative to other frameworks like ruby on rails, Merb, Nitro.

works by creating a local server port and managing requests from the chrome browser. The main.rb file can process requests and send responses or use .erb files for a html template.

to use add to the top of the page:
require "sinatra"
require"sinatra/reloader" <-- useful for not having to reset the terminal.


To use just run main.rb in terminal. It will automatically start the local server

================================
TIPS & TRICKS
================================
# hide query string with sinatra feature with specical syntax /:

get "/stock_price/:ticker" do
    params["ticker"]
end

=================================
layout.erb - <%= yield %> if there is a layout erb file sinatra will automatically link other .erb sections to it. 

======================
ruby main.rb -p (different port)
======================
params - value pulled in from query strings. Params data structure pretending to be a hash
=====================
erb(:"file.erb") - response, by linking a .erb file.
=====================
raise.to_s - fore break
=====================
in terminal type

sinatra new (name) -va // views & assets(public, static)

sinatra help new