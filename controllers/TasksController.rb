class TaskController < AppController

	options "*" do
    	response.headers["Access-Control-Allow-Methods"] = "HEAD,GET,POST,PUT,PATCH,DELETE,OPTIONS"
	end

	get '/' do
		# response['Access-Control-Allow-Origin'] = '*'
		@tasks = Task.all
		@tasks.to_json
	end

	post '/' do
		# response['Access-Control-Allow-Origin'] = '*'
		payload = params 
    	payload = JSON.parse(request.body.read).symbolize_keys
		@tasks = Task.new
		@tasks.todo = payload[:todo]
		@tasks.assignee = payload[:assignee]
		@tasks.save
		@tasks
	end
	
	delete '/:id' do
		# response['Access-Control-Allow-Origin'] = '*'
		@tasks = Task.find_by(id: params[:id])
		@tasks.delete
	end	

	put '/:id' do
		# response['Access-Control-Allow-Origin'] = '*'
		payload = params 
    	payload = JSON.parse(request.body.read).symbolize_keys
    	p payload
		@tasks = Task.find_by(id: payload[:id])
		@tasks.todo = payload[:todo]
		@tasks.assignee =  payload[:assignee]
		@tasks.save
	end	

end	