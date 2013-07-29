# myapp.rb
require 'sinatra'

get '/' do
  'Hello world!'
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params[:name] is 'foo' or 'bar'
  "Hello #{params[:name]}!"
end

get '/bash/:name' do |a|
  #a=#{params[:name]}
  IO.popen("sh #{a}").readlines
end

get '/deploy/' do
  puts "hello world...****************************"
  puts params['app']
  puts params['env']
  puts params['branch']
  puts params['deploy_type']
  IO.popen("sh ./script.sh #{params['app']} #{params['env']} #{params['branch']} #{params['deploy_type']}").readlines
end
