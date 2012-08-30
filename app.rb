
get '/' do
  redirect '/index'
end

get '/index' do
  haml :'index'
end
