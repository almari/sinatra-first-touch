# myapp.rb
require 'sinatra'

get '/' do
  erb :index
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
  IO.popen("cd ../downloads/vidoes/; youtube-dl -t -r 10k #{params['video_link']} &>> /tmp/hubot_download.log;").readlines
  'Ok...your video has been download'
end

get '/wget/' do
   puts params['link']
   IO.popen("cd ../downloads/files; wget -c --limit-rate=10k #{params['link']} &>> /tmp/hubot_download.log;")
   'Hurray ! download competed. '

end

get '/samson/' do
 # puts params['search']
  'apple'
  IO.popen("grep -i #{params['search']} /tmp/tree.dump").readlines
#  IO.popen('fortune').readlines
#  IO.popen("sh ./search_script.sh #{params['search']}").readlines

#  puts 'he he'
end

get '/dump/videos/' do
  IO.popen("sh ./search_script.sh").readlines
  IO.popen("cat /tmp/tree.dump").readlines
end

# to find the contact list in the csv file
get '/phone/' do

  puts "#{params['no']}"
  IO.popen("sh ./phone.sh '#{params[:no]}'").readlines

end
