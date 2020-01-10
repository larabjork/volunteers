require 'sinatra'
require 'sinatra/reloader'
require './lib/project'
require './lib/volunteer'
require 'pry'
require 'pg'

DB = PG.connect({:dbname => "volunteer_tracker"})
also_reload 'lib/**/*.rb'
