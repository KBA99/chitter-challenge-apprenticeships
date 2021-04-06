require 'sinatra/base'
require './lib/peep.rb'

class Chitter < Sinatra::Base
  get '/test' do
    'Test page'
  end

  get '/' do
    @peeps = Peep.all
    erb :'peeps/index'
  end

  get '/peeps' do
    @peeps = [
      "This is a peep!"
    ]
    erb :'peeps/index'
  end

  get '/peeps/new' do
    erb :'peeps/adding'
  end

  post '/peeps' do
    Peep.create(message: params[:peep])
    redirect '/peeps'
  end


  run! if app_file == $0
end
