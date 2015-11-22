# Staging

set :user, 'ss8558'
set :application, "SolrServer"
set :hostname, "rails4"
set :rails_env, 'production'
set :deploy_to, "/SOLR/#{application}"



set :db_type, "master"

role :app, "111"
role :web, "111"
role :db,  "111", :primary => true

set :branch do
  default_tag = `git tag -l #{rails_env}* `.split("\n").last
  tag = Capistrano::CLI.ui.ask "Please enter the tag you would like to deploy to #{rails_env} (make sure the tag has been pushed first): [#{default_tag}] "
  tag = default_tag if tag.empty?
  tag
end
