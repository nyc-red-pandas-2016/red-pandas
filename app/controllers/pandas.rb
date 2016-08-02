get '/' do
  @pandas  = Panda.all
  erb :'pandas/index'
end


get '/pandas/new' do
  erb :'pandas/new'
end


get '/pandas/:id' do
  @panda = 
end

post '/pandas' do
  @panda = Panda.new(params[:panda])
  if @panda.save
    redirect '/'
  else
    @errors = @panda.errors.full_messages
    erb :'pandas/new'
  end
end
