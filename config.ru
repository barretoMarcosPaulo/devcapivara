Dir[File.dirname(__FILE__)+"/app.rb"].each do |route|
	require route
end
use Rack::MethodOverride
use Rack::Session::Pool, :expire_after => 2592000
use Rack::Protection::RemoteToken
use Rack::Protection::SessionHijacking
run ApplicationController
