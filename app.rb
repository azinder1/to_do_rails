get '/chores' do
  @chores = Chore.all
  erb :index
end
