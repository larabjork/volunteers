require 'sinatra'
require 'sinatra/reloader'
require './lib/project'
require './lib/volunteer'
require 'pry'
require 'pg'

DB = PG.connect({:dbname => "volunteer_tracker"})
also_reload 'lib/**/*.rb'

get '/' do
    redirect to '/projects'
end

get '/projects' do
    @projects = Project.all
    erb :projects
end
post '/projects' do
    par1 = params[:title]
    Project.new({:title => par1}).save
    redirect to '/projects'
end

get '/projects/new' do
    erb :projects_new
end

get '/projects/:id' do
    @project = Project.find(params[:id].to_i)
    erb :projects_ID
end

patch '/projects/:id' do
  par1 = params[:title]
    Project.find(params[:id].to_i).update({:title => par1})
    redirect to "/projects"
end
delete '/projects/:id' do
    Project.find(params[:id].to_i).delete
    redirect to '/projects'
end

get '/projects/:id/edit' do
    @project = Project.find(params[:id])
    erb :projects_ID_edit
end

post '/projects/:id' do
    par1 = params[:name]
    par2 = params[:id]
    Volunteer.new({:name => par1, :project_id => par2}).save
    redirect to "/projects/#{params[:id]}"
end

get '/projects/:id/volunteers/:volunteer_id' do
    @project = Project.find(params[:id].to_i)
    @volunteer = Volunteer.find(params[:volunteer_id].to_i)
    erb :project_ID_volunteer_ID
end

patch '/projects/:id/volunteers/:volunteer_id' do
  par1 = params[:name]
  Volunteer.find(params[:volunteer_id].to_i).update({:name => par1})
  redirect to "/projects/#{params[:id]}"
end
