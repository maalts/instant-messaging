require 'bundler'
Bundler.require

require './app/models/message'

class App	< Sinatra::Base
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
		enable :sessions
		set :session_secret, 'admin123'
  end
	
	get '/p1' do
		@messages = Message.all
		erb :index1
	end
	
	post '/send1' do
		content = params[:content]
		from = params[:from]
		to = params[:to]
		@message = Message.create(:to => to, :from => from, :content => content)
		redirect '/p1'
	end
	
		get '/p2' do
		@messages = Message.all
		erb :index2
	end
	
	post '/send2' do
		content = params[:content]
		from = params[:from]
		to = params[:to]
		@message = Message.create(:to => to, :from => from, :content => content)
		redirect '/p2'
	end
end