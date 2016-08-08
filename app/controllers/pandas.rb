get '/' do
  require_user
  @pandas  = Panda.all
  erb :'pandas/index'
end


get '/pandas/new' do
  require_user
  erb :'pandas/new'
end


get '/pandas/:id' do
  require_user
  @panda = Panda.find(params[:id])
  erb :'pandas/show'
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
