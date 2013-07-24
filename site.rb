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

get '/sh' do
 # bb = IO.popen("ls -la")
  #b = bb.readlines
  #puts b.join
  system('echo -e "\E[35;40m `ping www.google.com -c 3`"')
  system('echo -e "\E[31;40m `fortune`"; echo -e "\E[39;40m ************************************:P."')
 # a.puts
end

get '/shell/:name' do
   IO.popen("echo 'Welcome #{params[:name]}'").readlines
  # IO.popen("ls").readlines
  # "Hello #{params[:name]}!"
   #O.popen('#{params[:name]}!').readlines
end

get '/bash/:name' do |a|
  #a=#{params[:name]}
  IO.popen("sh ./script.sh #{a}").readlines
end
