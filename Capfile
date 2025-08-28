# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
require "capistrano/deploy"

# SCM
require "capistrano/scm/git"

# Capistrano plugins
require "capistrano/bundler"
require "capistrano/rails/assets"
require "capistrano/rails/migrations"
require "capistrano/rbenv"
set :rbenv_type, :user
set :rbenv_ruby, '3.2.0'
require "capistrano/puma" 
install_plugin Capistrano::SCM::Git



# Load custom tasks
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
