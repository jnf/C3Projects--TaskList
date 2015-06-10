require "sinatra"
require "sinatra/reloader"
require "./lib/database"
require "./lib/queries"

class Tasks < Sinatra::Base
  register Sinatra::Reloader

  DATABASE_NAME = "taskList.db"

  get "/" do
    erb :index
  end

  get "/test-insert" do
    q = TaskList::Queries.new DATABASE_NAME
    @test = q.test_insert

    erb :index
  end
end
