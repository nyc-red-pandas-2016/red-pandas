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
  if request.xhr?
    erb :'pandas/show', layout: false
  else
    erb :'pandas/show'
  end
end

post '/pandas' do
  @panda = Panda.new(params[:panda])
  if @panda.save
    if request.xhr?
      erb :'/pandas/_panda_list_item', locals: {panda: @panda}, layout: false
    else
      redirect '/'
    end
  else
    @errors = @panda.errors.full_messages
    erb :'pandas/new'
  end
end

get '/pandas/:id/edit' do
  @panda = Panda.find_by(id: params[:id])
  erb :'pandas/edit'
end


put '/pandas/:id' do
  panda = Panda.find(params[:id])
  panda.update(params[:panda])
  redirect "/pandas/#{panda.id}"
end

