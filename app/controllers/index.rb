get '/' do
  # input = params[:post][:title]
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  p params
  @items = params 
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  input = params[:post][:title]
  second = params[:post][:price]
  # p input
  # erb :index
  # erb :cool_url
  redirect "/cool_url?first=#{input}&second=#{second}"
end

# get '/post_cool_url' do
#   puts "[LOG] Params: #{params.inspect}"
# end

