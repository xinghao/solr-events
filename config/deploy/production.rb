# Staging

set :user, 'root'
set :application, "peoplefinders_data_import"
set :hostname, "frank"
set :rails_env, 'production'
set :deploy_to, "/www/rails_apps/#{application}"

set :db_type, "master"

role :app, "203.38.191.179"
role :web, "203.38.191.179"
role :db,  "203.38.191.179", :primary => true

set :branch do
  default_tag = `git tag -l #{rails_env}* `.split("\n").last
  tag = Capistrano::CLI.ui.ask "Please enter the tag you would like to deploy to #{rails_env} (make sure the tag has been pushed first): [#{default_tag}] "
  tag = default_tag if tag.empty?
  tag
end
