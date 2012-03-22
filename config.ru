require 'rack/contrib/try_static'
require 'rack/rewrite'

use Rack::Rewrite do

  # Url bases for analysis and posts pages
  r302 /(\/analysis|posts)\/?$/, "/"

  # Pages from survey collection
  r302 /\/questionnaire|thank-you|done\/?/, "/closed"
end

use Rack::TryStatic, 
    :root => "output",
    :urls => %w[/],
    :try => ['.html', 'index.html', '/index.html']

# Empty app, should never be reached:
class Homepage
  def call(env)
    [404, {"Content-Type" => "text/html"}, ["404. PC LOAD LETTER"] ]
  end
end
run Homepage.new
