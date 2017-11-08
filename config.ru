require 'sinatra/base'

require'./controllers/AppController'
require'./controllers/TasksController'

require './models/Task'

map('/') {run AppController}
map('/tasks') {run TaskController}