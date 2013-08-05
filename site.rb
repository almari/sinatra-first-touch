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

get '/bash/:name' do
  #a=#{params[:name]}
  IO.popen("ls").readlines
end

get '/deploy/' do
  puts "Hold on, I'm busy deployin'...****************************"
  puts params['app']
  puts params['env']
  puts params['branch']
  IO.popen("sh ./script.sh #{params['app']} #{params['env']} #{params['branch']}").readlines
end

get '/video/' do
  puts "yo, I am downloading video"
  puts params['video']
  IO.popen("cd ../downloads/vidoes/; youtube-dl -t #{params['video_link']}").readlines
  'Ok...your video has been download'
end

get '/wget/' do
   puts params['link']
   IO.popen("cd ../downloads/files; wget -c #{params['link']} >> /tmp/download.log")
   'Hurray ! download competed. '

end
